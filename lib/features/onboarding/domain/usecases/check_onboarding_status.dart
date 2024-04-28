// Package imports:
import 'package:uptodo/core/failures.dart';
import 'package:uptodo/core/usecase_typedefs.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:dartz/dartz.dart';

/// Requires [String] pin
class CheckOnboardingStatus implements Usecase<bool, NoParams?> {
  CheckOnboardingStatus(this._repo);

  final OnboardingRepository _repo;

  @override
  Future<Either<UIError, bool>> call([params]) async {
    // Usecase.assertParamsRequired(params);
    try {
      final hasSeenOnboarding =
          await _repo.checkOnboardingStatus(persist: false);

      return Right(hasSeenOnboarding);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
