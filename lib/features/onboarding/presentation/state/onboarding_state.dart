part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial({bool? visitedOnboarding}) = _InitialOnboardingState;
  const factory OnboardingState.fetching({bool? visitedOnboarding}) = _FetchingOnboardingState;
  const factory OnboardingState.loaded({bool? visitedOnboarding}) = _LoadedOnboardingState;
  const factory OnboardingState.error({bool? visitedOnboarding}) = _ErrorOnboardingState;

  factory OnboardingState.fromJson(Map<String, dynamic> json) => _$OnboardingStateFromJson(json);
}
