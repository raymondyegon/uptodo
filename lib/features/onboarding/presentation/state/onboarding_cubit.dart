// Package imports:
import 'package:uptodo/features/onboarding/domain/usecases/onboarding_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_cubit.g.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final CheckOnboardingStatus _checkOnboardingStatus;
  final PersistOnboardingStatus _persistOnboardingStatus;

  OnboardingCubit(this._checkOnboardingStatus, this._persistOnboardingStatus)
      : super(const OnboardingState.initial(visitedOnboarding: null));

  Future<void> checkOnboardingStatus() async {
    emit(const OnboardingState.fetching(visitedOnboarding: false));

    final result = await _checkOnboardingStatus();
    result.fold(
      (l) => emit(const OnboardingState.error(visitedOnboarding: null)),
      (r) => emit(OnboardingState.loaded(visitedOnboarding: r)),
    );
  }

  Future<void> persistOnboardingStatus() async {
    emit(const OnboardingState.fetching(visitedOnboarding: false));

    final result = await _persistOnboardingStatus(true);
    result.fold(
      (l) => emit(const OnboardingState.error(visitedOnboarding: null)),
      (r) => emit(OnboardingState.loaded(visitedOnboarding: r)),
    );
  }
}
