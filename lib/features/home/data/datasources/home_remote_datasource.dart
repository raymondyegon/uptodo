import 'dart:async';

import 'package:uptodo/core/data/datasources/remote_datasource_base.dart';
import 'package:uptodo/core/data/network/network_service.dart';
import 'package:uptodo/core/data/network/network_service_impl.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/home/data/models/todo_model.dart';
import 'package:uptodo/features/home/domain/models/todo_params.dart';
import 'home_endpoints.dart';

abstract class HomeRemoteDatasource implements RemoteDatasource {
  Future<TodoResponseModel> getUserTodos({required int userId, int page = 1});

  Future<TodoModel> addTodo(TodoParams params);

  Future<TodoModel> updateTodo(TodoParams params);

  Future<void> deleteTodo(int id);
}

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  final NetworkService _networkService;

  HomeRemoteDatasourceImpl(this._networkService);

  @override
  Future<TodoModel> addTodo(TodoParams params) async {
    final _result = await _networkService.postHttp(
      HomeEndpoints.addTodo,
      body: {
        "todo": params.todo,
        "completed": params.completed,
        "userId": params.userId,
      },
    );

    if (_result['error'] != null) {
      await handleApiFailure(
        source: "addTodo",
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );
    }

    return TodoModel.fromJson(_result['data']);
  }

  @override
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  void dispose() {}

  @override
  Future<TodoResponseModel> getUserTodos({
    required int userId,
    int page = 1,
  }) async {
    const int limit = 10;

    final _result = await _networkService.getHttp(
      HomeEndpoints.userTodos(userId),
      params: {
        'limit': limit,
        'skip': limit * (page - 1),
      },
    );

    if (_result['error'] != null) {
      await handleApiFailure(
        source: "updateTodo",
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );
    }

    return TodoResponseModel.fromJson(_result['data']);
  }

  @override
  Future<TodoModel> updateTodo(TodoParams params) async {
    final body = <String, dynamic>{};

    if (params.todo != null) {
      body['todo'] = params.todo;
    }

    if (params.completed != null) {
      body['completed'] = params.completed;
    }

    final _result = await _networkService.putHttp(
      HomeEndpoints.updateTodo(params.todoId!),
      body: body,
    );

    if (_result['error'] != null) {
      await handleApiFailure(
        source: "updateTodo",
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );
    }

    return TodoModel.fromJson(_result['data']);
  }

  @override
  Future<void> deleteTodo(int id) async {
    final _result = await _networkService.deleteHttp(
      HomeEndpoints.updateTodo(id),
    );

    if (_result['error'] != null) {
      await handleApiFailure(
        source: "deleteTodo",
        errorMessage: _result['message'] as String,
        errorCode: _result['error'] as ApiErrors,
      );
    }
  }
}
