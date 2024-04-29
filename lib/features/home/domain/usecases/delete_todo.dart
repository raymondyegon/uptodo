import 'package:dartz/dartz.dart';
import 'package:uptodo/core/failures.dart';
import 'package:uptodo/core/usecase_typedefs.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/home/domain/repository/home_repository.dart';

class DeleteTodo implements Usecase<VoidType, int> {
  final HomeRepository _repo;

  DeleteTodo(this._repo);

  @override
  Future<Either<UIError, VoidType>> call([int? params]) async {
    Usecase.assertParamsRequired(params);

    try {
      await _repo.deleteTodo(params!);

      return const Right(VoidType());
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
