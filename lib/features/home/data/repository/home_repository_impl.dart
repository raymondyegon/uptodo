import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/home/data/datasources/home_remote_datasource.dart';
import 'package:uptodo/features/home/data/models/todo_model.dart';
import 'package:uptodo/features/home/domain/models/todo_params.dart';
import 'package:uptodo/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDatasource _repo;

  HomeRepositoryImpl(this._repo);

  @override
  Future<TodoModel> addTodo(TodoParams params) async {
    final res = await guardedApiCall<TodoModel>(
      () => _repo.addTodo(params),
    );

    return res;
  }

  @override
  Future<void> deleteTodo(int id) async => guardedApiCall(
        () => _repo.deleteTodo(id),
      );

  @override
  Future<TodoResponseModel> getUserTodos(
      {required int userId, int page = 1}) async {
    final res = await guardedApiCall<TodoResponseModel>(
      () => _repo.getUserTodos(userId: userId, page: page),
    );

    return res;
  }

  @override
  Future<TodoModel> updateTodo(TodoParams params) async {
    final res = await guardedApiCall<TodoModel>(
      () => _repo.updateTodo(params),
    );

    return res;
  }
}
