class TodoParams {
  final int userId;
  final String? todo;
  final int? todoId;
  final bool? completed;
  final bool isUpdate;

  TodoParams({
    required this.userId,
    this.todo,
    this.todoId,
    this.completed,
    this.isUpdate = false,
  });

  TodoParams copyWith({
    int? userId,
    String? todo,
    int? todoId,
    bool? completed,
    bool? isUpdate,
  }) =>
      TodoParams(
        userId: userId ?? this.userId,
        todo: todo ?? this.todo,
        todoId: todoId ?? this.todoId,
        completed: completed ?? this.completed,
        isUpdate: isUpdate ?? this.isUpdate,
      );

  @override
  String toString() =>
      'TodoParams(userId: $userId, todo: $todo, todoId: $todoId, completed: $completed, isUpdate: $isUpdate';
}

class TodoPaginatedParams {
  final int userId;
  final int page;

  TodoPaginatedParams({required this.userId, required this.page});

  @override
  String toString() => 'TodoPaginatedParams(userId: $userId, page: $page)';

  TodoPaginatedParams copyWith({
    int? userId,
    int? page,
  }) =>
      TodoPaginatedParams(
        userId: userId ?? this.userId,
        page: page ?? this.page,
      );
}
