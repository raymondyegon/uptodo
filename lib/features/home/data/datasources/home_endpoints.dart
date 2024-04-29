class HomeEndpoints {
  static String userTodos(int id) => 'users/$id/todos';

  static String addTodo = 'todos/add';

  /// For delete and patch tasks
  static String updateTodo(int id) => 'todos/$id';
}
