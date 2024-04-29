// 📦 Package imports:
import 'package:dartz/dartz.dart';

// 🌎 Project imports:
import 'package:uptodo/core/failures.dart';
import 'package:uptodo/core/usecase_typedefs.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/authentication/data/models/user_model.dart';
import 'package:uptodo/features/authentication/domain/models/signin_params.dart';
import 'package:uptodo/features/authentication/domain/repository/authentication_repository.dart';

class SignIn implements Usecase<UserModel?, SigninParams> {
  final AuthenticationRepository _repo;

  SignIn(this._repo);

  @override
  Future<Either<UIError, UserModel?>> call([SigninParams? params]) async {
    try {
      final user = await _repo.signInWithUsername(
        username: params!.username,
        password: params.password,
      );

      return Right(user);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
