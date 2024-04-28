import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uptodo/features/onboarding/domain/onboarding_module_injector.dart';
import 'package:uptodo/features/onboarding/domain/usecases/onboarding_usecases.dart';
import 'package:uptodo/features/onboarding/presentation/state/onboarding_cubit.dart';

final providers = [
  BlocProvider<OnboardingCubit>(
    create: (context) => OnboardingCubit(
      OnboardingModuleInjector.resolve<CheckOnboardingStatus>(),
      OnboardingModuleInjector.resolve<PersistOnboardingStatus>(),
    )..checkOnboardingStatus(),
  ),
];
