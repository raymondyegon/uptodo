// 📦 Package imports:
import 'package:dartz/dartz.dart';

// 🌎 Project imports:
import 'package:uptodo/core/failures.dart';
import 'package:uptodo/core/usecase_typedefs.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/authentication/data/models/user_model.dart';
import 'package:uptodo/features/authentication/domain/repository/authentication_repository.dart';

class CheckLogin implements Usecase<UserModel?, NoParams> {
  final AuthenticationRepository _repo;

  CheckLogin(this._repo);

  @override
  Future<Either<UIError, UserModel?>> call([NoParams? params]) async {
    try {
      final user = await _repo.checkLogin();

      return Right(user);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
