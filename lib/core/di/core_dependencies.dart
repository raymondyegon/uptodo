// register all relevant injectors(usually per feature)

import 'core_injector.dart';

void configureDependencies() {
  coreInjector().setup();
}
