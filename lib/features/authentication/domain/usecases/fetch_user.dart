// 📦 Package imports:
import 'package:dartz/dartz.dart';

// 🌎 Project imports:
import 'package:uptodo/core/failures.dart';
import 'package:uptodo/core/usecase_typedefs.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/authentication/domain/repository/authentication_repository.dart';

class FetchUser implements Usecase<VoidType, NoParams?> {
  final AuthenticationRepository _repo;

  FetchUser(this._repo);

  @override
  Future<Either<UIError, VoidType>> call([NoParams? params]) async {
    try {
      await _repo.fetchUser();

      return const Right(VoidType());
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
