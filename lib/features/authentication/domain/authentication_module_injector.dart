// 📦 Package imports:
import 'package:kiwi/kiwi.dart';

// 🌎 Project imports:
import 'package:uptodo/core/data/database/database_service.dart';
import 'package:uptodo/core/data/network/network_service.dart';
import 'package:uptodo/features/authentication/data/datasources/authentication_local_datasource.dart';
import 'package:uptodo/features/authentication/data/datasources/authentication_remote_datasource.dart';
import 'package:uptodo/features/authentication/data/repository/authentication_repository_impl.dart';
import 'repository/authentication_repository.dart';
import 'usecases/authentication_usecases.dart';

part 'authentication_module_injector.g.dart';

abstract class AuthenticationModuleInjector {
  static late KiwiContainer container;
  // ignore: always_specify_types
  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    _$AuthenticationModuleInjector()._configure();
  }

  @Register.factory(AuthenticationLocalDatasource,
      from: AuthenticationLocalDatasourceImpl)
  @Register.factory(AuthenticationRemoteDatasource,
      from: AuthenticationRemoteDatasourceImpl)
  @Register.factory(AuthenticationRepository,
      from: AuthenticationRepositoryImpl)
  @Register.singleton(Logout)
  @Register.singleton(SignIn)
  @Register.singleton(CheckLogin)
  @Register.singleton(FetchUser)
  void _configure(); // ignore: unused_element
}

AuthenticationModuleInjector authenticationModuleInjector() =>
    _$AuthenticationModuleInjector();
