class TodoParams {
  final int userId;
  final String? todo;
  final int? todoId;
  final bool? completed;
  final bool isUpdate;
  final bool isDelete;

  TodoParams({
    required this.userId,
    this.todo,
    this.todoId,
    this.completed,
    this.isUpdate = false,
    this.isDelete = false,
  });

  TodoParams copyWith({
    int? userId,
    String? todo,
    int? todoId,
    bool? completed,
    bool? isUpdate,
    bool? isDelete,
  }) =>
      TodoParams(
        userId: userId ?? this.userId,
        todo: todo ?? this.todo,
        todoId: todoId ?? this.todoId,
        completed: completed ?? this.completed,
        isUpdate: isUpdate ?? this.isUpdate,
        isDelete: isDelete ?? this.isDelete,
      );

  @override
  String toString() {
    return 'TodoParams(userId: $userId, todo: $todo, todoId: $todoId, completed: $completed, isUpdate: $isUpdate, isDelete: $isDelete)';
  }
}



// todo: 'Use DummyJSON in the project',
//     completed: false,
//     userId: 5,