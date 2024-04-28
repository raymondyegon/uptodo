// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_module_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$OnboardingModuleInjector extends OnboardingModuleInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<OnboardingLocalDatasource>(
          (c) => OnboardingLocalDatasourceImpl())
      ..registerFactory<OnboardingRepository>(
          (c) => OnboardingRepositoryImpl(c<OnboardingLocalDatasource>()))
      ..registerSingleton(
          (c) => PersistOnboardingStatus(c<OnboardingRepository>()))
      ..registerSingleton(
          (c) => CheckOnboardingStatus(c<OnboardingRepository>()));
  }
}
