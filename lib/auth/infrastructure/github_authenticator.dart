import 'package:flutter/services.dart';
import 'package:oauth2/oauth2.dart';
import 'package:repo_viewer/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:repo_viewer/auth/infrastructure/oauth_app_credentials.dart';

class GithubAuthenticator {
  final CredentialsStorage _credentialsStorage;

  GithubAuthenticator(this._credentialsStorage);

  static const scopes = ['read:user', 'repo'];
  static final authorizationEndpoint =
      Uri.parse('https://github.com/login/oauth/authorize');
  static final tokenEndpoint =
      Uri.parse('https://github.com/login/oauth/access_token');
  static final redirectUrl = Uri.parse('http://localhost:3000/callback');

  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();
      if ((storedCredentials?.canRefresh ?? false) &&
          (storedCredentials?.isExpired ?? false)) {
        //TODO: refresh
      }
      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);

  AuthorizationCodeGrant get authorizationCodeGrant => AuthorizationCodeGrant(
        OauthAppCredentials.clientId,
        authorizationEndpoint,
        tokenEndpoint,
        secret: OauthAppCredentials.clientSecret,
      );

  Uri getAuthorizationUrl(AuthorizationCodeGrant grant) =>
      grant.getAuthorizationUrl(
        redirectUrl,
        scopes: scopes,
      );
}
