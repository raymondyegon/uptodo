import 'package:kiwi/kiwi.dart';

import 'package:uptodo/core/data/network/network_service.dart';
import 'package:uptodo/features/home/data/datasources/home_remote_datasource.dart';
import 'package:uptodo/features/home/data/repository/home_repository_impl.dart';
import 'package:uptodo/features/home/domain/repository/home_repository.dart';
import 'package:uptodo/features/home/domain/usecases/home_usecases.dart';

part 'home_module_injector.g.dart';

abstract class HomeModuleInjector {
  static late KiwiContainer container;
  // ignore: always_specify_types
  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    _$HomeModuleInjector()._configure();
  }

  @Register.factory(HomeRemoteDatasource, from: HomeRemoteDatasourceImpl)
  @Register.factory(HomeRepository, from: HomeRepositoryImpl)
  @Register.singleton(AddTodo)
  @Register.singleton(DeleteTodo)
  @Register.singleton(FetchTodos)
  @Register.singleton(UpdateTodo)
  void _configure(); // ignore: unused_element
}

HomeModuleInjector homeModuleInjector() => _$HomeModuleInjector();
