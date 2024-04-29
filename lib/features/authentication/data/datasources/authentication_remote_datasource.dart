// 🎯 Dart imports:
import 'dart:async';

// 🌎 Project imports:
import 'package:uptodo/core/data/datasources/remote_datasource_base.dart';
import 'package:uptodo/core/data/network/network_service.dart';
import 'package:uptodo/core/data/network/network_service_impl.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/authentication/data/models/user_model.dart';
import 'authentication_endpoints.dart';

abstract class AuthenticationRemoteDatasource implements RemoteDatasource {
  Future<UserModel?> refreshToken();

  Future<UserModel?> fetchUser();

  Future<UserModel?> signInWithUsername({
    required String username,
    required String password,
  });
}

class AuthenticationRemoteDatasourceImpl
    implements AuthenticationRemoteDatasource {
  final NetworkService _networkService;

  AuthenticationRemoteDatasourceImpl(this._networkService);

  @override
  Future<UserModel?> fetchUser() async {
    final _result = await _networkService.getHttp(
      AuthenticationEndpoints.fetchUser,
    );

    if (_result['error'] != null) {
      await handleApiFailure(
        source: 'fetchUser',
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );
    }

    logger.i(_result);

    return UserModel.fromJson(_result['data']);
  }

  @override
  Future<UserModel?> refreshToken() async {
    final _result = await _networkService.getHttp(
      AuthenticationEndpoints.refreshToken,
    );

    if (_result['error'] != null) {
      await handleApiFailure(
        source: 'refreshToken',
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );
    }

    logger.i(_result);

    return UserModel.fromJson(_result['data']);
  }

  @override
  Future<UserModel?> signInWithUsername({
    required String username,
    required String password,
  }) async {
    final _result = await _networkService.postHttp(
      AuthenticationEndpoints.login,
      tokenRequired: false,
      body: {'username': username, 'password': password},
    );

    if (_result['error'] != null) {
      await handleApiFailure(
        source: 'signInWithUsername',
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );
    }

    logger.i(_result);

    return UserModel.fromJson(_result['data']);
  }

  @override
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  void dispose() {}
}
