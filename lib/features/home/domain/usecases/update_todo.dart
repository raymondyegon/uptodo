import 'package:dartz/dartz.dart';
import 'package:uptodo/core/failures.dart';
import 'package:uptodo/core/usecase_typedefs.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/home/data/models/todo_model.dart';
import 'package:uptodo/features/home/domain/models/todo_params.dart';
import 'package:uptodo/features/home/domain/repository/home_repository.dart';

class UpdateTodo implements Usecase<TodoModel, TodoParams> {
  final HomeRepository _repo;

  UpdateTodo(this._repo);

  @override
  Future<Either<UIError, TodoModel>> call([TodoParams? params]) async {
    Usecase.assertParamsRequired(params);

    try {
      final data = await _repo.updateTodo(params!);

      return Right(data);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
