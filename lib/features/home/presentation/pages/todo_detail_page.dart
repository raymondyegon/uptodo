import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:uptodo/core/platform/platform.dart';
import 'package:uptodo/core/presentation/presentation.dart';
import 'package:uptodo/features/authentication/presentation/state/authentication_cubit.dart';
import 'package:uptodo/features/home/data/models/todo_model.dart';
import 'package:uptodo/features/home/domain/models/todo_params.dart';
import 'package:uptodo/features/home/presentation/state/home_cubit.dart';

class TodoDetailPage extends StatefulWidget {
  final TodoModel todo;
  const TodoDetailPage({super.key, required this.todo});

  @override
  State<TodoDetailPage> createState() => _TodoDetailPageState();
}

class _TodoDetailPageState extends State<TodoDetailPage> {
  late bool status;

  @override
  void initState() {
    super.initState();

    status = widget.todo.completed;
  }

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthenticationCubit>().state.payload.user;

    return PageMargin(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.white,
          ),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: AppColors.black,
      ),
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: AutoSizeText(
              "${widget.todo.todo}",
              style: AppStyles.textStyleBodyLarge(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: AppColors.gray,
              ),
            ),
          ),
          SizedBox(height: 3.h),
          const Divider(color: AppColors.gray2),
          SwitchListTile(
            value: status,
            contentPadding: EdgeInsets.zero,
            title: AutoSizeText(
              'Status: ${status ? "Completed" : "Incomplete"}',
              style: AppStyles.textStyleBodyLarge(),
            ),
            onChanged: (value) {
              setState(() {
                status = value;

                context.read<HomeCubit>().updateTodo(
                      params: TodoParams(
                        userId: user!.id,
                        isUpdate: true,
                        completed: value,
                        todoId: widget.todo.id,
                      ),
                    );
              });
            },
          ),
          SizedBox(height: 3.h),
          const Divider(color: AppColors.gray2),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: AutoSizeText(
              "Delete Task",
              style: AppStyles.textStyleBodyLarge().copyWith(
                color: AppColors.error,
              ),
            ),
            onTap: () {
              context.read<HomeCubit>().deleteTodo(todoId: widget.todo.id);

              context.pop();
            },
            leading: const Icon(
              Icons.delete,
              color: AppColors.error,
            ),
          ),
        ],
      ),
    );
  }
}
