// 📦 Package imports:
import 'package:bloc/bloc.dart';
import 'package:uptodo/features/authentication/domain/models/signin_params.dart';
import 'package:uptodo/features/onboarding/domain/usecases/onboarding_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:uptodo/core/utilities/utilities.dart';
import 'package:uptodo/features/authentication/data/datasources/authentication_local_datasource.dart';
import 'package:uptodo/features/authentication/data/models/user_model.dart';
import 'package:uptodo/features/authentication/domain/authentication_module_injector.dart';
import 'package:uptodo/features/authentication/domain/usecases/authentication_usecases.dart';

part 'authentication_cubit.freezed.dart';
part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  final Logout _logout;
  final SignIn _signIn;
  final CheckLogin _checkLogin;
  final FetchUser _fetchUser;
  final CheckOnboardingStatus _checkOnboardingStatus;

  AuthenticationCubit(
    this._logout,
    this._signIn,
    this._checkLogin,
    this._fetchUser,
    this._checkOnboardingStatus,
  ) : super(
          const AuthenticationState.initial(
            payload: AuthenticationStatePayload(
              error: '',
              hasPerformOnboard: null,
              user: null,
            ),
          ),
        ) {
    AuthenticationModuleInjector.resolve<AuthenticationLocalDatasource>()
        .dataStreamController
        .stream
        .listen((userr) {
      // ignore: unnecessary_null_comparison
      if (userr == null) {
        logout();
      }

      emit(state.copyWith.payload(user: userr));
    });
  }

  Future<void> logout() async {
    emit(AuthenticationState.loggingOut(payload: state.payload.copyWith()));

    final result = await _logout();

    result.fold(
      (l) => emit(AuthenticationState.error(
          payload: state.payload.copyWith(error: l.message))),
      (r) => emit(AuthenticationState.loggedOut(
          payload: state.payload.copyWith(
        user: null,
      ))),
    );
  }

  Future<void> fetchUser() async {
    final result = await _fetchUser();

    result.fold(
      (l) {
        logger.e(l.message);

        logout();
      },
      (r) => {},
    );
  }

  Future<void> signin({required SigninParams params}) async {
    emit(AuthenticationState.loggingIn(payload: state.payload.copyWith()));

    final result = await _signIn(params);

    result.fold(
      (l) => emit(AuthenticationState.error(
          payload: state.payload.copyWith(error: l.message))),
      (r) => r == null
          ? emit(
              AuthenticationState.loggedOut(payload: state.payload.copyWith()))
          : emit(AuthenticationState.loggedIn(
              payload: state.payload.copyWith(user: r))),
    );
  }

  Future<void> checkLogin() async {
    emit(AuthenticationState.loggingIn(payload: state.payload.copyWith()));

    final result = await _checkLogin();

    final res = await _checkOnboardingStatus();

    final hasOnboarded = res.getOrElse(() => false);

    result.fold(
      (l) => emit(AuthenticationState.loggedOut(
          payload: state.payload.copyWith(error: l.message))),
      (r) => emit(
        !hasOnboarded
            ? AuthenticationState.onboardRequired(
                payload: state.payload.copyWith(),
              )
            : r == null
                ? AuthenticationState.loggedOut(
                    payload: state.payload.copyWith())
                : AuthenticationState.loggedIn(
                    payload: state.payload.copyWith(user: r),
                  ),
      ),
    );
  }
}
