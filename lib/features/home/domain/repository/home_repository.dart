import 'package:uptodo/features/home/data/models/todo_model.dart';
import 'package:uptodo/features/home/domain/models/todo_params.dart';

abstract class HomeRepository {
  Future<TodoResponseModel> getUserTodos({required int userId, int page = 1});

  Future<TodoModel> addTodo(TodoParams params);

  Future<TodoModel> updateTodo(TodoParams params);

  Future<void> deleteTodo(int id);
}
