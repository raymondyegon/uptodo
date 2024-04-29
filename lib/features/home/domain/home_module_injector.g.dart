// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_module_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$HomeModuleInjector extends HomeModuleInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<HomeRemoteDatasource>(
          (c) => HomeRemoteDatasourceImpl(c<NetworkService>()))
      ..registerFactory<HomeRepository>(
          (c) => HomeRepositoryImpl(c<InvalidType>()))
      ..registerSingleton((c) => AddTodo(c<HomeRepository>()))
      ..registerSingleton((c) => DeleteTodo(c<HomeRepository>()))
      ..registerSingleton((c) => FetchTodos(c<HomeRepository>()))
      ..registerSingleton((c) => UpdateTodo(c<HomeRepository>()));
  }
}
