import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:uptodo/features/home/data/models/todo_model.dart';
import 'package:uptodo/features/home/domain/models/todo_params.dart';
import 'package:uptodo/features/home/domain/usecases/home_usecases.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';
part 'home_cubit.g.dart';

class HomeCubit extends HydratedCubit<HomeState> {
  final AddTodo _addTodo;
  final DeleteTodo _deleteTodo;
  final FetchTodos _fetchTodos;
  final UpdateTodo _updateTodo;

  HomeCubit(this._addTodo, this._deleteTodo, this._fetchTodos, this._updateTodo)
      : super(
          const HomeState.initial(payload: HomeStatePayload(error: '')),
        );

  Future<void> fetchTodos({required TodoPaginatedParams params}) async {
    emit(HomeState.loading(payload: state.payload.copyWith()));

    final result = await _fetchTodos(params);

    result.fold(
      (l) => emit(
          HomeState.error(payload: state.payload.copyWith(error: l.message))),
      (r) => emit(HomeState.loaded(
          payload: state.payload.copyWith(
              todoResponse: r, todos: r.todos + state.payload.todos))),
    );
  }

  Future<void> deleteTodo({required int todoId}) async {
    emit(HomeState.loading(payload: state.payload.copyWith()));

    final result = await _deleteTodo(todoId);

    result.fold(
      (l) => emit(
          HomeState.error(payload: state.payload.copyWith(error: l.message))),
      (r) {
        final updated = state.payload.todos;

        updated.retainWhere((e) => e.id != todoId);

        emit(HomeState.loaded(payload: state.payload.copyWith(todos: updated)));
      },
    );
  }

  Future<void> addTodo({required TodoParams params}) async {
    emit(HomeState.loading(payload: state.payload.copyWith()));

    final result = await _addTodo(params);

    result.fold(
      (l) => emit(
          HomeState.error(payload: state.payload.copyWith(error: l.message))),
      (r) {
        emit(HomeState.loaded(
            payload: state.payload.copyWith(todos: [r] + state.payload.todos)));
      },
    );
  }

  Future<void> updatedTodo({required TodoParams params}) async {
    emit(HomeState.loading(payload: state.payload.copyWith()));

    final result = await _updateTodo(params);

    result.fold(
      (l) => emit(
          HomeState.error(payload: state.payload.copyWith(error: l.message))),
      (r) {
        final updated = state.payload.todos;

        updated.retainWhere((e) => e.id != params.todoId);

        emit(HomeState.loaded(
            payload: state.payload.copyWith(todos: [r] + state.payload.todos)));
      },
    );
  }

  @override
  HomeState? fromJson(Map<String, dynamic> json) => HomeState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(HomeState state) => state.toJson();
}
