part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial(
          {required AuthenticationStatePayload payload}) =
      _InitialAuthenticationState;

  const factory AuthenticationState.loggingIn(
          {required AuthenticationStatePayload payload}) =
      _CheckingAuthenticationState;

  const factory AuthenticationState.loading(
          {required AuthenticationStatePayload payload}) =
      _LoadingAuthenticationState;

  const factory AuthenticationState.loggingOut(
          {required AuthenticationStatePayload payload}) =
      _LoggingOutAuthenticationState;

  const factory AuthenticationState.loggedIn(
          {required AuthenticationStatePayload payload}) =
      _AuthenticationSuccessState;

  const factory AuthenticationState.loggedOut(
          {required AuthenticationStatePayload payload}) =
      _AuthenticationLoggedOutState;

  const factory AuthenticationState.error(
          {required AuthenticationStatePayload payload}) =
      _AuthenticationErrorState;

  const factory AuthenticationState.onboardRequired(
          {required AuthenticationStatePayload payload}) =
      _AuthenticationOnboardRequiredState;
}

@freezed
class AuthenticationStatePayload with _$AuthenticationStatePayload {
  const factory AuthenticationStatePayload({
    required String error,
    required UserModel? user,
    required bool? hasPerformOnboard,
  }) = _AuthenticationStatePayload;
}
