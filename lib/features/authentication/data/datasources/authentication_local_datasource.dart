// 🎯 Dart imports:
import 'dart:async';

import 'package:uptodo/core/data/database/database_service.dart';
import 'package:uptodo/core/data/database/ut_boxes.dart';
import 'package:uptodo/core/data/datasources/local_datasource_base.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/authentication/data/models/user_model.dart';

abstract class AuthenticationLocalDatasource
    implements LocalDatasource<UserModel?> {
  Future<void> logout();
  Future<UserModel?> getPersonalAccountUser();
  Future<void> savePersonalAccountUser(UserModel user);
  Future<void> deletePersonalAccountUser(UserModel user);
}

class AuthenticationLocalDatasourceImpl
    implements AuthenticationLocalDatasource {
  final DatabaseService _databaseService;

  AuthenticationLocalDatasourceImpl(this._databaseService);

  static final StreamController<UserModel> _streamController =
      StreamController.broadcast();

  @override
  StreamController<UserModel> get dataStreamController => _streamController;

  @override
  Future<void> deletePersonalAccountUser(UserModel user) async {
    await _databaseService.delete(
      collection: UtBoxes.user,
      key: UtBoxKeys.userAccount.toString(),
    );
  }

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  Future<UserModel?> getPersonalAccountUser() async {
    final _result = await _databaseService.retrieve(
      collection: UtBoxes.user,
      key: UtBoxKeys.userAccount.toString(),
      notFoundDefault: null,
    );

    logger.i(_result);

    if (_result['data'] == null) {
      return null;
    }

    return UserModel.fromJson(_result['data'] as Map);
  }

  @override
  Future<void> logout() async => _databaseService.clearData();

  @override
  Future<void> savePersonalAccountUser(UserModel user) async {
    await _databaseService.create(
      collection: UtBoxes.user,
      key: UtBoxKeys.userAccount.toString(),
      value: user.toJson(),
    );

    _streamController.add(user);
  }
}
