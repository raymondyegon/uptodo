import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:uptodo/core/platform/platform.dart';
import 'package:uptodo/core/presentation/presentation.dart';
import 'package:uptodo/features/authentication/presentation/state/authentication_cubit.dart';
import 'package:uptodo/features/home/domain/models/todo_params.dart';
import 'package:uptodo/features/home/presentation/state/home_cubit.dart';

class AddTodoDialog extends StatefulWidget {
  const AddTodoDialog({super.key});

  @override
  State<AddTodoDialog> createState() => _AddTodoDialogState();
}

class _AddTodoDialogState extends State<AddTodoDialog> {
  late TextEditingController controller;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthenticationCubit>().state.payload.user;

    return Form(
      key: _formKey,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.black2,
        ),
        width: double.infinity,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 3.h),
                AutoSizeText(
                  "Add Task",
                  style: AppStyles.textStyleBodyTitle(),
                ),
                SizedBox(
                  height: 2.h,
                ),
                AppTextFields(
                  hintText: 'Task Description. Eg. Go Shopping',
                  minLines: 2,
                  validator: (value) {
                    if (value == '') return "Description is required";

                    return null;
                  },
                  controller: controller,
                ),
                SizedBox(height: 3.h),
                AppButton(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      context.pop();

                      context.read<HomeCubit>().addTodo(
                            params: TodoParams(
                              userId: user!.id,
                              completed: false,
                              todo: controller.text.trim(),
                            ),
                          );
                    }
                  },
                  label: 'Add Task',
                  width: double.infinity,
                ),
                SizedBox(height: 3.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
