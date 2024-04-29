import 'package:dartz/dartz.dart';
import 'package:uptodo/core/failures.dart';
import 'package:uptodo/core/usecase_typedefs.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/home/data/models/todo_model.dart';
import 'package:uptodo/features/home/domain/models/todo_params.dart';
import 'package:uptodo/features/home/domain/repository/home_repository.dart';

class FetchTodos implements Usecase<TodoResponseModel, TodoPaginatedParams> {
  final HomeRepository _repo;

  FetchTodos(this._repo);

  @override
  Future<Either<UIError, TodoResponseModel>> call(
      [TodoPaginatedParams? params]) async {
    Usecase.assertParamsRequired(params);

    try {
      final data =
          await _repo.getUserTodos(userId: params!.userId, page: params.page);

      return Right(data);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
