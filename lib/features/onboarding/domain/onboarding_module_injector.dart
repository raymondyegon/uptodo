// Package imports:
import 'package:uptodo/features/onboarding/data/datasources/onboarding_local_datasource.dart';
import 'package:uptodo/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:kiwi/kiwi.dart';

// Project imports:
import 'repositories/onboarding_repository.dart';
import 'usecases/onboarding_usecases.dart';

part 'onboarding_module_injector.g.dart';

abstract class OnboardingModuleInjector {
  static late KiwiContainer container;
  // ignore: always_specify_types
  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    _$OnboardingModuleInjector()._configure();
  }

  @Register.factory(OnboardingLocalDatasource,
      from: OnboardingLocalDatasourceImpl)
  @Register.factory(OnboardingRepository, from: OnboardingRepositoryImpl)
  @Register.singleton(PersistOnboardingStatus)
  @Register.singleton(CheckOnboardingStatus)
  void _configure(); // ignore: unused_element
}

OnboardingModuleInjector onboardingModuleInjector() =>
    _$OnboardingModuleInjector();
