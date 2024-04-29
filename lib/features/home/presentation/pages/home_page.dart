import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:uptodo/core/platform/platform.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:uptodo/core/presentation/presentation.dart';
import 'package:uptodo/features/authentication/presentation/state/authentication_cubit.dart';
import 'package:uptodo/features/home/data/models/todo_model.dart';
import 'package:uptodo/features/home/domain/models/todo_params.dart';
import 'package:uptodo/features/home/presentation/state/home_cubit.dart';
import 'package:uptodo/features/home/presentation/widgets/add_todo_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PagingController<int, TodoModel> pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();

    final user = context.read<AuthenticationCubit>().state.payload.user;

    pagingController.addPageRequestListener(
      (pageKey) {
        context.read<HomeCubit>().fetchTodos(
              params: TodoPaginatedParams(
                page: pageKey,
                userId: user!.id,
              ),
            );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);

    final user = context.watch<AuthenticationCubit>().state.payload.user;

    return PageMargin(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        centerTitle: false,
        title: AutoSizeText(
          'UpTodo',
          style: AppStyles.textStyleAppBar().copyWith(
            fontSize: 20.sp,
          ),
        ),
        actions: [
          AppCircularImage(
            imageUrl: user?.image ?? "",
            imageType: ImageType.networkImage,
            radius: sc.heightScaledSize(30),
          ),
          SizedBox(width: 3.w),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: AppColors.gray,
            builder: (_) => const AddTodoDialog(),
          );
        },
        child: const Icon(Icons.add),
      ),
      child: Column(
        children: [
          SizedBox(height: sc.heightScaledSize(10)),
          Expanded(
            child: MultiBlocListener(
              listeners: [
                BlocListener<AuthenticationCubit, AuthenticationState>(
                  listener: (_, state) => state.maybeWhen(
                    orElse: () => {},
                    loggedOut: (_) => context.goNamed('auth'),
                  ),
                ),
                BlocListener<HomeCubit, HomeState>(
                  listener: (_, state) => state.maybeWhen(
                    orElse: () => {},
                    error: (payload) => {
                      pagingController.error = payload.error,
                      EasyLoading.dismiss(),
                    },
                    updating: (_) => {
                      EasyLoading.show(status: 'Loading'),
                    },
                    loaded: (payload) => {
                      EasyLoading.dismiss(),
                      pagingController.value = PagingState(
                        itemList: payload.todos,
                        nextPageKey: payload.todoResponse?.todos.isEmpty == true
                            ? null
                            : (pagingController.nextPageKey ?? 0) + 1,
                      ),
                    },
                  ),
                ),
              ],
              child: RefreshIndicator(
                onRefresh: () async => pagingController.refresh(),
                child: PagedListView.separated(
                  pagingController: pagingController,
                  separatorBuilder: (_, index) =>
                      SizedBox(height: sc.heightScaledSize(10)),
                  builderDelegate: PagedChildBuilderDelegate<TodoModel>(
                    itemBuilder: (_, item, __) => ListTile(
                      onTap: () {
                        context.goNamed('todo-detail', extra: item);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      tileColor: AppColors.black2,
                      title: AutoSizeText(
                        item.todo,
                        style: AppStyles.textStyleBodyLarge(),
                      ),
                      subtitle: AutoSizeText(
                        'Status: ${item.completed ? "Completed" : "Incomplete"}',
                        style: AppStyles.textStyleBodyMedium()
                            .copyWith(color: AppColors.gray),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 3.w),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.gray,
                        size: sc.heightScaledSize(18),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
