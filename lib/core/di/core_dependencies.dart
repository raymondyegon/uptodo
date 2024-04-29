// register all relevant injectors(usually per feature)

import 'package:uptodo/features/authentication/domain/authentication_module_injector.dart';
import 'package:uptodo/features/onboarding/domain/onboarding_module_injector.dart';

import 'core_injector.dart';

void configureDependencies() {
  coreInjector().setup();
  onboardingModuleInjector().setup();
  authenticationModuleInjector().setup();
}
