// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_module_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$AuthenticationModuleInjector extends AuthenticationModuleInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<AuthenticationLocalDatasource>(
          (c) => AuthenticationLocalDatasourceImpl(c<DatabaseService>()))
      ..registerFactory<AuthenticationRemoteDatasource>(
          (c) => AuthenticationRemoteDatasourceImpl(c<NetworkService>()))
      ..registerFactory<AuthenticationRepository>((c) =>
          AuthenticationRepositoryImpl(c<AuthenticationLocalDatasource>(),
              c<AuthenticationRemoteDatasource>()))
      ..registerSingleton((c) => Logout(c<AuthenticationRepository>()))
      ..registerSingleton((c) => SignIn(c<AuthenticationRepository>()))
      ..registerSingleton((c) => CheckLogin(c<AuthenticationRepository>()))
      ..registerSingleton((c) => FetchUser(c<AuthenticationRepository>()));
  }
}
