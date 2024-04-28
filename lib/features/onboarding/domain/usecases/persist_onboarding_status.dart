// Package imports:
import 'package:uptodo/core/failures.dart';
import 'package:uptodo/core/usecase_typedefs.dart';
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:dartz/dartz.dart';

/// Requires [String] pin
class PersistOnboardingStatus implements Usecase<bool, bool?> {
  PersistOnboardingStatus(this._repo);
  final OnboardingRepository _repo;

  @override
  Future<Either<UIError, bool>> call([params]) async {
    Usecase.assertParamsRequired(params);
    try {
      final hasSeenOnboard = await _repo.checkOnboardingStatus(persist: true);

      return Right(hasSeenOnboard);
    } on NetworkFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    } on CacheFailure catch (e, s) {
      return Left(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
