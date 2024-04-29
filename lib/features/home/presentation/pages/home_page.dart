import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uptodo/core/platform/platform.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:uptodo/core/presentation/presentation.dart';
import 'package:uptodo/features/authentication/presentation/state/authentication_cubit.dart';
import 'package:uptodo/features/home/data/models/todo_model.dart';
import 'package:uptodo/features/home/domain/models/todo_params.dart';
import 'package:uptodo/features/home/presentation/state/home_cubit.dart';

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

    return PageMargin(
      child: Column(
        children: [
          Expanded(
            child: BlocListener<HomeCubit, HomeState>(
              listener: (_, state) => state.maybeWhen(
                orElse: () => {},
                error: (payload) => {
                  pagingController.error = payload.error,
                },
                loaded: (payload) => {
                  pagingController.value = PagingState(
                    itemList: payload.todos,
                    nextPageKey: payload.todoResponse?.total ==
                            pagingController.itemList?.length
                        ? null
                        : (pagingController.nextPageKey ?? 0) + 1,
                  ),
                },
              ),
              child: RefreshIndicator(
                onRefresh: () async => pagingController.refresh(),
                child: PagedListView.separated(
                  pagingController: pagingController,
                  separatorBuilder: (_, index) =>
                      SizedBox(height: sc.heightScaledSize(10)),
                  builderDelegate: PagedChildBuilderDelegate<TodoModel>(
                    itemBuilder: (_, item, __) => ListTile(
                      title: AutoSizeText(item.todo),
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
