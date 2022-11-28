import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:repo_viewer/auth/infrastructure/github_authenticator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AuthorizationPage extends StatefulWidget {
  final Uri authorizationUrl;
  final void Function(Uri redirectUrl) onAuthorizationCodeRedirectAttempt;

  const AuthorizationPage({
    super.key,
    required this.authorizationUrl,
    required this.onAuthorizationCodeRedirectAttempt,
  });

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: widget.authorizationUrl.toString(),
        onWebViewCreated: (controller) {
          controller.clearCache();
          CookieManager().clearCookies();
        },
        navigationDelegate: (navReq) {
          if (navReq.url.startsWith(
            GithubAuthenticator.redirectUrl.toString(),
          )) {
            widget.onAuthorizationCodeRedirectAttempt(Uri.parse(navReq.url));
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      )),
    );
  }
}
