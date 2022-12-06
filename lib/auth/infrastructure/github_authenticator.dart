import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:oauth2/oauth2.dart';
import 'package:repo_viewer/auth/domain/auth_failure.dart';
import 'package:repo_viewer/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:repo_viewer/auth/infrastructure/oauth_app_credentials.dart';
import 'package:http/http.dart' as http;
import 'package:repo_viewer/core/infrastructure/dio_extensions.dart';
import 'package:repo_viewer/core/shared/encoders.dart';

class GithubOAuthHttpClient extends http.BaseClient {
  final httpClient = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    return httpClient.send(request);
  }
}

class GithubAuthenticator {
  final CredentialsStorage _credentialsStorage;
  final Dio _dio;

  GithubAuthenticator(
    this._credentialsStorage,
    this._dio,
  );

  static const scopes = ['read:user', 'repo'];
  static final authorizationEndpoint =
      Uri.parse('https://github.com/login/oauth/authorize');
  static final tokenEndpoint =
      Uri.parse('https://github.com/login/oauth/access_token');
  static final redirectUrl = Uri.parse('http://localhost:3000/callback');
  static final revocationEndpoint = Uri.parse(
      'https://api.github.com/applications/${OauthAppCredentials.clientId}/token');

  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();
      if (storedCredentials != null) {
        if (storedCredentials.canRefresh && storedCredentials.isExpired) {
          final failureOrCredentials = await refresh(storedCredentials);
          return failureOrCredentials.fold(
              (l) => null, (credentials) => credentials);
        }
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
        httpClient: GithubOAuthHttpClient(),
        secret: OauthAppCredentials.clientSecret,
      );

  Uri getAuthorizationUrl(AuthorizationCodeGrant grant) =>
      grant.getAuthorizationUrl(
        redirectUrl,
        scopes: scopes,
      );

  Future<Either<AuthFailure, Unit>> handleAuthorizationResponse(
    AuthorizationCodeGrant grant,
    Map<String, String> queryParams,
  ) async {
    try {
      final httpClient = await grant.handleAuthorizationResponse(queryParams);
      _credentialsStorage.save(httpClient.credentials);
      return right(unit);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}: ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      final accessToken = await _credentialsStorage
          .read()
          .then((credentials) => credentials?.accessToken);
      final usernameAndPassword = stringToBase64.encode(
        '${OauthAppCredentials.clientId}:${OauthAppCredentials.clientSecret}',
      );
      try {
        await _dio.deleteUri(
          revocationEndpoint,
          options: Options(
            headers: {
              'Authorization': 'basic $usernameAndPassword',
            },
          ),
          data: {
            'access_token': accessToken,
          },
        );
      } on DioError catch (e) {
        if (e.isNoConnectionError) {
          log('Token not revoked!');
        } else {
          rethrow;
        }
      }
      return clearCredentialsStorage();
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> clearCredentialsStorage() async {
    try {
      await _credentialsStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Credentials>> refresh(
    Credentials credentials,
  ) async {
    try {
      final refreshedCredentials = await credentials.refresh(
        identifier: OauthAppCredentials.clientId,
        secret: OauthAppCredentials.clientSecret,
        httpClient: GithubOAuthHttpClient(),
      );
      await _credentialsStorage.save(refreshedCredentials);
      return right(refreshedCredentials);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}: ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }
}
