import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/authentication/data/datasources/authentication_local_datasource.dart';
import 'package:uptodo/features/authentication/data/datasources/authentication_remote_datasource.dart';
import 'package:uptodo/features/authentication/data/models/user_model.dart';
import 'package:uptodo/features/authentication/domain/repository/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationLocalDatasource _localDatasource;
  final AuthenticationRemoteDatasource _remoteDatasource;

  AuthenticationRepositoryImpl(this._localDatasource, this._remoteDatasource);

  @override
  Future<void> fetchUser() async {
    final res = await guardedApiCall<UserModel?>(
      _remoteDatasource.fetchUser,
    );

    logger.i(res);

    if (res != null) {
      await guardedCacheAccess(
        () => _localDatasource.savePersonalAccountUser(res),
      );
    }
  }

  @override
  Future<void> refreshToken() async {
    final res = await guardedApiCall<UserModel?>(
      _remoteDatasource.refreshToken,
    );

    logger.i(res);

    if (res != null) {
      await guardedCacheAccess(
        () => _localDatasource.savePersonalAccountUser(res),
      );
    }
  }

  @override
  Future<UserModel?> signInWithUsername({
    required String username,
    required String password,
  }) async {
    final res = await guardedApiCall<UserModel?>(
      () => _remoteDatasource.signInWithUsername(
          username: username, password: password),
      getValidationFailedMsg: (e) => e.message,
    );

    if (res != null) {
      await guardedCacheAccess(
        () => _localDatasource.savePersonalAccountUser(res),
      );
    }

    return res;
  }

  @override
  Future<void> logout() async => _localDatasource.logout();

  @override
  Future<UserModel?> checkLogin() async => guardedCacheAccess<UserModel?>(
        _localDatasource.getPersonalAccountUser,
      );
}
