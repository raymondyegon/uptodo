import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/onboarding/data/datasources/onboarding_local_datasource.dart';
import 'package:uptodo/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDatasource _localDatasource;

  OnboardingRepositoryImpl(this._localDatasource);

  @override
  Future<bool> checkOnboardingStatus({bool? persist}) async =>
      guardedCacheAccess<bool>(
          () => _localDatasource.checkOnboarding(persist: persist ?? false));
}
