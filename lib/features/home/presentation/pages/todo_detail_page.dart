import 'package:flutter/material.dart';
import 'package:uptodo/features/home/data/models/todo_model.dart';

class TodoDetailPage extends StatefulWidget {
  final TodoModel todo;
  const TodoDetailPage({super.key, required this.todo});

  @override
  State<TodoDetailPage> createState() => _TodoDetailPageState();
}

class _TodoDetailPageState extends State<TodoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
