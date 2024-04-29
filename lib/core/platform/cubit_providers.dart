import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uptodo/features/authentication/domain/authentication_module_injector.dart';
import 'package:uptodo/features/authentication/domain/usecases/authentication_usecases.dart';
import 'package:uptodo/features/authentication/presentation/state/authentication_cubit.dart';
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
  BlocProvider<AuthenticationCubit>(
    create: (_) => AuthenticationCubit(
      AuthenticationModuleInjector.resolve<Logout>(),
      AuthenticationModuleInjector.resolve<SignIn>(),
      AuthenticationModuleInjector.resolve<CheckLogin>(),
      AuthenticationModuleInjector.resolve<FetchUser>(),
      OnboardingModuleInjector.resolve<CheckOnboardingStatus>(),
    )..checkLogin(),
  ),
];
