// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatePayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatePayload payload) initial,
    required TResult Function(AuthenticationStatePayload payload) loggingIn,
    required TResult Function(AuthenticationStatePayload payload) loading,
    required TResult Function(AuthenticationStatePayload payload) loggingOut,
    required TResult Function(AuthenticationStatePayload payload) loggedIn,
    required TResult Function(AuthenticationStatePayload payload) loggedOut,
    required TResult Function(AuthenticationStatePayload payload) error,
    required TResult Function(AuthenticationStatePayload payload)
        onboardRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatePayload payload)? initial,
    TResult? Function(AuthenticationStatePayload payload)? loggingIn,
    TResult? Function(AuthenticationStatePayload payload)? loading,
    TResult? Function(AuthenticationStatePayload payload)? loggingOut,
    TResult? Function(AuthenticationStatePayload payload)? loggedIn,
    TResult? Function(AuthenticationStatePayload payload)? loggedOut,
    TResult? Function(AuthenticationStatePayload payload)? error,
    TResult? Function(AuthenticationStatePayload payload)? onboardRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatePayload payload)? initial,
    TResult Function(AuthenticationStatePayload payload)? loggingIn,
    TResult Function(AuthenticationStatePayload payload)? loading,
    TResult Function(AuthenticationStatePayload payload)? loggingOut,
    TResult Function(AuthenticationStatePayload payload)? loggedIn,
    TResult Function(AuthenticationStatePayload payload)? loggedOut,
    TResult Function(AuthenticationStatePayload payload)? error,
    TResult Function(AuthenticationStatePayload payload)? onboardRequired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_CheckingAuthenticationState value) loggingIn,
    required TResult Function(_LoadingAuthenticationState value) loading,
    required TResult Function(_LoggingOutAuthenticationState value) loggingOut,
    required TResult Function(_AuthenticationSuccessState value) loggedIn,
    required TResult Function(_AuthenticationLoggedOutState value) loggedOut,
    required TResult Function(_AuthenticationErrorState value) error,
    required TResult Function(_AuthenticationOnboardRequiredState value)
        onboardRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthenticationState value)? initial,
    TResult? Function(_CheckingAuthenticationState value)? loggingIn,
    TResult? Function(_LoadingAuthenticationState value)? loading,
    TResult? Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult? Function(_AuthenticationSuccessState value)? loggedIn,
    TResult? Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult? Function(_AuthenticationErrorState value)? error,
    TResult? Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_CheckingAuthenticationState value)? loggingIn,
    TResult Function(_LoadingAuthenticationState value)? loading,
    TResult Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult Function(_AuthenticationSuccessState value)? loggedIn,
    TResult Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult Function(_AuthenticationErrorState value)? error,
    TResult Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call({AuthenticationStatePayload payload});

  $AuthenticationStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatePayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationStatePayloadCopyWith<$Res> get payload {
    return $AuthenticationStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialAuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$InitialAuthenticationStateImplCopyWith(
          _$InitialAuthenticationStateImpl value,
          $Res Function(_$InitialAuthenticationStateImpl) then) =
      __$$InitialAuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatePayload payload});

  @override
  $AuthenticationStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$InitialAuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$InitialAuthenticationStateImpl>
    implements _$$InitialAuthenticationStateImplCopyWith<$Res> {
  __$$InitialAuthenticationStateImplCopyWithImpl(
      _$InitialAuthenticationStateImpl _value,
      $Res Function(_$InitialAuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$InitialAuthenticationStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatePayload,
    ));
  }
}

/// @nodoc

class _$InitialAuthenticationStateImpl implements _InitialAuthenticationState {
  const _$InitialAuthenticationStateImpl({required this.payload});

  @override
  final AuthenticationStatePayload payload;

  @override
  String toString() {
    return 'AuthenticationState.initial(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialAuthenticationStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialAuthenticationStateImplCopyWith<_$InitialAuthenticationStateImpl>
      get copyWith => __$$InitialAuthenticationStateImplCopyWithImpl<
          _$InitialAuthenticationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatePayload payload) initial,
    required TResult Function(AuthenticationStatePayload payload) loggingIn,
    required TResult Function(AuthenticationStatePayload payload) loading,
    required TResult Function(AuthenticationStatePayload payload) loggingOut,
    required TResult Function(AuthenticationStatePayload payload) loggedIn,
    required TResult Function(AuthenticationStatePayload payload) loggedOut,
    required TResult Function(AuthenticationStatePayload payload) error,
    required TResult Function(AuthenticationStatePayload payload)
        onboardRequired,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatePayload payload)? initial,
    TResult? Function(AuthenticationStatePayload payload)? loggingIn,
    TResult? Function(AuthenticationStatePayload payload)? loading,
    TResult? Function(AuthenticationStatePayload payload)? loggingOut,
    TResult? Function(AuthenticationStatePayload payload)? loggedIn,
    TResult? Function(AuthenticationStatePayload payload)? loggedOut,
    TResult? Function(AuthenticationStatePayload payload)? error,
    TResult? Function(AuthenticationStatePayload payload)? onboardRequired,
  }) {
    return initial?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatePayload payload)? initial,
    TResult Function(AuthenticationStatePayload payload)? loggingIn,
    TResult Function(AuthenticationStatePayload payload)? loading,
    TResult Function(AuthenticationStatePayload payload)? loggingOut,
    TResult Function(AuthenticationStatePayload payload)? loggedIn,
    TResult Function(AuthenticationStatePayload payload)? loggedOut,
    TResult Function(AuthenticationStatePayload payload)? error,
    TResult Function(AuthenticationStatePayload payload)? onboardRequired,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_CheckingAuthenticationState value) loggingIn,
    required TResult Function(_LoadingAuthenticationState value) loading,
    required TResult Function(_LoggingOutAuthenticationState value) loggingOut,
    required TResult Function(_AuthenticationSuccessState value) loggedIn,
    required TResult Function(_AuthenticationLoggedOutState value) loggedOut,
    required TResult Function(_AuthenticationErrorState value) error,
    required TResult Function(_AuthenticationOnboardRequiredState value)
        onboardRequired,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthenticationState value)? initial,
    TResult? Function(_CheckingAuthenticationState value)? loggingIn,
    TResult? Function(_LoadingAuthenticationState value)? loading,
    TResult? Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult? Function(_AuthenticationSuccessState value)? loggedIn,
    TResult? Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult? Function(_AuthenticationErrorState value)? error,
    TResult? Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_CheckingAuthenticationState value)? loggingIn,
    TResult Function(_LoadingAuthenticationState value)? loading,
    TResult Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult Function(_AuthenticationSuccessState value)? loggedIn,
    TResult Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult Function(_AuthenticationErrorState value)? error,
    TResult Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAuthenticationState implements AuthenticationState {
  const factory _InitialAuthenticationState(
          {required final AuthenticationStatePayload payload}) =
      _$InitialAuthenticationStateImpl;

  @override
  AuthenticationStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$InitialAuthenticationStateImplCopyWith<_$InitialAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckingAuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$CheckingAuthenticationStateImplCopyWith(
          _$CheckingAuthenticationStateImpl value,
          $Res Function(_$CheckingAuthenticationStateImpl) then) =
      __$$CheckingAuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatePayload payload});

  @override
  $AuthenticationStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$CheckingAuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$CheckingAuthenticationStateImpl>
    implements _$$CheckingAuthenticationStateImplCopyWith<$Res> {
  __$$CheckingAuthenticationStateImplCopyWithImpl(
      _$CheckingAuthenticationStateImpl _value,
      $Res Function(_$CheckingAuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$CheckingAuthenticationStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatePayload,
    ));
  }
}

/// @nodoc

class _$CheckingAuthenticationStateImpl
    implements _CheckingAuthenticationState {
  const _$CheckingAuthenticationStateImpl({required this.payload});

  @override
  final AuthenticationStatePayload payload;

  @override
  String toString() {
    return 'AuthenticationState.loggingIn(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckingAuthenticationStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckingAuthenticationStateImplCopyWith<_$CheckingAuthenticationStateImpl>
      get copyWith => __$$CheckingAuthenticationStateImplCopyWithImpl<
          _$CheckingAuthenticationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatePayload payload) initial,
    required TResult Function(AuthenticationStatePayload payload) loggingIn,
    required TResult Function(AuthenticationStatePayload payload) loading,
    required TResult Function(AuthenticationStatePayload payload) loggingOut,
    required TResult Function(AuthenticationStatePayload payload) loggedIn,
    required TResult Function(AuthenticationStatePayload payload) loggedOut,
    required TResult Function(AuthenticationStatePayload payload) error,
    required TResult Function(AuthenticationStatePayload payload)
        onboardRequired,
  }) {
    return loggingIn(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatePayload payload)? initial,
    TResult? Function(AuthenticationStatePayload payload)? loggingIn,
    TResult? Function(AuthenticationStatePayload payload)? loading,
    TResult? Function(AuthenticationStatePayload payload)? loggingOut,
    TResult? Function(AuthenticationStatePayload payload)? loggedIn,
    TResult? Function(AuthenticationStatePayload payload)? loggedOut,
    TResult? Function(AuthenticationStatePayload payload)? error,
    TResult? Function(AuthenticationStatePayload payload)? onboardRequired,
  }) {
    return loggingIn?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatePayload payload)? initial,
    TResult Function(AuthenticationStatePayload payload)? loggingIn,
    TResult Function(AuthenticationStatePayload payload)? loading,
    TResult Function(AuthenticationStatePayload payload)? loggingOut,
    TResult Function(AuthenticationStatePayload payload)? loggedIn,
    TResult Function(AuthenticationStatePayload payload)? loggedOut,
    TResult Function(AuthenticationStatePayload payload)? error,
    TResult Function(AuthenticationStatePayload payload)? onboardRequired,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_CheckingAuthenticationState value) loggingIn,
    required TResult Function(_LoadingAuthenticationState value) loading,
    required TResult Function(_LoggingOutAuthenticationState value) loggingOut,
    required TResult Function(_AuthenticationSuccessState value) loggedIn,
    required TResult Function(_AuthenticationLoggedOutState value) loggedOut,
    required TResult Function(_AuthenticationErrorState value) error,
    required TResult Function(_AuthenticationOnboardRequiredState value)
        onboardRequired,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthenticationState value)? initial,
    TResult? Function(_CheckingAuthenticationState value)? loggingIn,
    TResult? Function(_LoadingAuthenticationState value)? loading,
    TResult? Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult? Function(_AuthenticationSuccessState value)? loggedIn,
    TResult? Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult? Function(_AuthenticationErrorState value)? error,
    TResult? Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_CheckingAuthenticationState value)? loggingIn,
    TResult Function(_LoadingAuthenticationState value)? loading,
    TResult Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult Function(_AuthenticationSuccessState value)? loggedIn,
    TResult Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult Function(_AuthenticationErrorState value)? error,
    TResult Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }
}

abstract class _CheckingAuthenticationState implements AuthenticationState {
  const factory _CheckingAuthenticationState(
          {required final AuthenticationStatePayload payload}) =
      _$CheckingAuthenticationStateImpl;

  @override
  AuthenticationStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$CheckingAuthenticationStateImplCopyWith<_$CheckingAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingAuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$LoadingAuthenticationStateImplCopyWith(
          _$LoadingAuthenticationStateImpl value,
          $Res Function(_$LoadingAuthenticationStateImpl) then) =
      __$$LoadingAuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatePayload payload});

  @override
  $AuthenticationStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadingAuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$LoadingAuthenticationStateImpl>
    implements _$$LoadingAuthenticationStateImplCopyWith<$Res> {
  __$$LoadingAuthenticationStateImplCopyWithImpl(
      _$LoadingAuthenticationStateImpl _value,
      $Res Function(_$LoadingAuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadingAuthenticationStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatePayload,
    ));
  }
}

/// @nodoc

class _$LoadingAuthenticationStateImpl implements _LoadingAuthenticationState {
  const _$LoadingAuthenticationStateImpl({required this.payload});

  @override
  final AuthenticationStatePayload payload;

  @override
  String toString() {
    return 'AuthenticationState.loading(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAuthenticationStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingAuthenticationStateImplCopyWith<_$LoadingAuthenticationStateImpl>
      get copyWith => __$$LoadingAuthenticationStateImplCopyWithImpl<
          _$LoadingAuthenticationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatePayload payload) initial,
    required TResult Function(AuthenticationStatePayload payload) loggingIn,
    required TResult Function(AuthenticationStatePayload payload) loading,
    required TResult Function(AuthenticationStatePayload payload) loggingOut,
    required TResult Function(AuthenticationStatePayload payload) loggedIn,
    required TResult Function(AuthenticationStatePayload payload) loggedOut,
    required TResult Function(AuthenticationStatePayload payload) error,
    required TResult Function(AuthenticationStatePayload payload)
        onboardRequired,
  }) {
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatePayload payload)? initial,
    TResult? Function(AuthenticationStatePayload payload)? loggingIn,
    TResult? Function(AuthenticationStatePayload payload)? loading,
    TResult? Function(AuthenticationStatePayload payload)? loggingOut,
    TResult? Function(AuthenticationStatePayload payload)? loggedIn,
    TResult? Function(AuthenticationStatePayload payload)? loggedOut,
    TResult? Function(AuthenticationStatePayload payload)? error,
    TResult? Function(AuthenticationStatePayload payload)? onboardRequired,
  }) {
    return loading?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatePayload payload)? initial,
    TResult Function(AuthenticationStatePayload payload)? loggingIn,
    TResult Function(AuthenticationStatePayload payload)? loading,
    TResult Function(AuthenticationStatePayload payload)? loggingOut,
    TResult Function(AuthenticationStatePayload payload)? loggedIn,
    TResult Function(AuthenticationStatePayload payload)? loggedOut,
    TResult Function(AuthenticationStatePayload payload)? error,
    TResult Function(AuthenticationStatePayload payload)? onboardRequired,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_CheckingAuthenticationState value) loggingIn,
    required TResult Function(_LoadingAuthenticationState value) loading,
    required TResult Function(_LoggingOutAuthenticationState value) loggingOut,
    required TResult Function(_AuthenticationSuccessState value) loggedIn,
    required TResult Function(_AuthenticationLoggedOutState value) loggedOut,
    required TResult Function(_AuthenticationErrorState value) error,
    required TResult Function(_AuthenticationOnboardRequiredState value)
        onboardRequired,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthenticationState value)? initial,
    TResult? Function(_CheckingAuthenticationState value)? loggingIn,
    TResult? Function(_LoadingAuthenticationState value)? loading,
    TResult? Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult? Function(_AuthenticationSuccessState value)? loggedIn,
    TResult? Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult? Function(_AuthenticationErrorState value)? error,
    TResult? Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_CheckingAuthenticationState value)? loggingIn,
    TResult Function(_LoadingAuthenticationState value)? loading,
    TResult Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult Function(_AuthenticationSuccessState value)? loggedIn,
    TResult Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult Function(_AuthenticationErrorState value)? error,
    TResult Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingAuthenticationState implements AuthenticationState {
  const factory _LoadingAuthenticationState(
          {required final AuthenticationStatePayload payload}) =
      _$LoadingAuthenticationStateImpl;

  @override
  AuthenticationStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadingAuthenticationStateImplCopyWith<_$LoadingAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggingOutAuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$LoggingOutAuthenticationStateImplCopyWith(
          _$LoggingOutAuthenticationStateImpl value,
          $Res Function(_$LoggingOutAuthenticationStateImpl) then) =
      __$$LoggingOutAuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatePayload payload});

  @override
  $AuthenticationStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoggingOutAuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$LoggingOutAuthenticationStateImpl>
    implements _$$LoggingOutAuthenticationStateImplCopyWith<$Res> {
  __$$LoggingOutAuthenticationStateImplCopyWithImpl(
      _$LoggingOutAuthenticationStateImpl _value,
      $Res Function(_$LoggingOutAuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoggingOutAuthenticationStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatePayload,
    ));
  }
}

/// @nodoc

class _$LoggingOutAuthenticationStateImpl
    implements _LoggingOutAuthenticationState {
  const _$LoggingOutAuthenticationStateImpl({required this.payload});

  @override
  final AuthenticationStatePayload payload;

  @override
  String toString() {
    return 'AuthenticationState.loggingOut(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggingOutAuthenticationStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggingOutAuthenticationStateImplCopyWith<
          _$LoggingOutAuthenticationStateImpl>
      get copyWith => __$$LoggingOutAuthenticationStateImplCopyWithImpl<
          _$LoggingOutAuthenticationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatePayload payload) initial,
    required TResult Function(AuthenticationStatePayload payload) loggingIn,
    required TResult Function(AuthenticationStatePayload payload) loading,
    required TResult Function(AuthenticationStatePayload payload) loggingOut,
    required TResult Function(AuthenticationStatePayload payload) loggedIn,
    required TResult Function(AuthenticationStatePayload payload) loggedOut,
    required TResult Function(AuthenticationStatePayload payload) error,
    required TResult Function(AuthenticationStatePayload payload)
        onboardRequired,
  }) {
    return loggingOut(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatePayload payload)? initial,
    TResult? Function(AuthenticationStatePayload payload)? loggingIn,
    TResult? Function(AuthenticationStatePayload payload)? loading,
    TResult? Function(AuthenticationStatePayload payload)? loggingOut,
    TResult? Function(AuthenticationStatePayload payload)? loggedIn,
    TResult? Function(AuthenticationStatePayload payload)? loggedOut,
    TResult? Function(AuthenticationStatePayload payload)? error,
    TResult? Function(AuthenticationStatePayload payload)? onboardRequired,
  }) {
    return loggingOut?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatePayload payload)? initial,
    TResult Function(AuthenticationStatePayload payload)? loggingIn,
    TResult Function(AuthenticationStatePayload payload)? loading,
    TResult Function(AuthenticationStatePayload payload)? loggingOut,
    TResult Function(AuthenticationStatePayload payload)? loggedIn,
    TResult Function(AuthenticationStatePayload payload)? loggedOut,
    TResult Function(AuthenticationStatePayload payload)? error,
    TResult Function(AuthenticationStatePayload payload)? onboardRequired,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_CheckingAuthenticationState value) loggingIn,
    required TResult Function(_LoadingAuthenticationState value) loading,
    required TResult Function(_LoggingOutAuthenticationState value) loggingOut,
    required TResult Function(_AuthenticationSuccessState value) loggedIn,
    required TResult Function(_AuthenticationLoggedOutState value) loggedOut,
    required TResult Function(_AuthenticationErrorState value) error,
    required TResult Function(_AuthenticationOnboardRequiredState value)
        onboardRequired,
  }) {
    return loggingOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthenticationState value)? initial,
    TResult? Function(_CheckingAuthenticationState value)? loggingIn,
    TResult? Function(_LoadingAuthenticationState value)? loading,
    TResult? Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult? Function(_AuthenticationSuccessState value)? loggedIn,
    TResult? Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult? Function(_AuthenticationErrorState value)? error,
    TResult? Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
  }) {
    return loggingOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_CheckingAuthenticationState value)? loggingIn,
    TResult Function(_LoadingAuthenticationState value)? loading,
    TResult Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult Function(_AuthenticationSuccessState value)? loggedIn,
    TResult Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult Function(_AuthenticationErrorState value)? error,
    TResult Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut(this);
    }
    return orElse();
  }
}

abstract class _LoggingOutAuthenticationState implements AuthenticationState {
  const factory _LoggingOutAuthenticationState(
          {required final AuthenticationStatePayload payload}) =
      _$LoggingOutAuthenticationStateImpl;

  @override
  AuthenticationStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoggingOutAuthenticationStateImplCopyWith<
          _$LoggingOutAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSuccessStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationSuccessStateImplCopyWith(
          _$AuthenticationSuccessStateImpl value,
          $Res Function(_$AuthenticationSuccessStateImpl) then) =
      __$$AuthenticationSuccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatePayload payload});

  @override
  $AuthenticationStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$AuthenticationSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationSuccessStateImpl>
    implements _$$AuthenticationSuccessStateImplCopyWith<$Res> {
  __$$AuthenticationSuccessStateImplCopyWithImpl(
      _$AuthenticationSuccessStateImpl _value,
      $Res Function(_$AuthenticationSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$AuthenticationSuccessStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatePayload,
    ));
  }
}

/// @nodoc

class _$AuthenticationSuccessStateImpl implements _AuthenticationSuccessState {
  const _$AuthenticationSuccessStateImpl({required this.payload});

  @override
  final AuthenticationStatePayload payload;

  @override
  String toString() {
    return 'AuthenticationState.loggedIn(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSuccessStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSuccessStateImplCopyWith<_$AuthenticationSuccessStateImpl>
      get copyWith => __$$AuthenticationSuccessStateImplCopyWithImpl<
          _$AuthenticationSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatePayload payload) initial,
    required TResult Function(AuthenticationStatePayload payload) loggingIn,
    required TResult Function(AuthenticationStatePayload payload) loading,
    required TResult Function(AuthenticationStatePayload payload) loggingOut,
    required TResult Function(AuthenticationStatePayload payload) loggedIn,
    required TResult Function(AuthenticationStatePayload payload) loggedOut,
    required TResult Function(AuthenticationStatePayload payload) error,
    required TResult Function(AuthenticationStatePayload payload)
        onboardRequired,
  }) {
    return loggedIn(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatePayload payload)? initial,
    TResult? Function(AuthenticationStatePayload payload)? loggingIn,
    TResult? Function(AuthenticationStatePayload payload)? loading,
    TResult? Function(AuthenticationStatePayload payload)? loggingOut,
    TResult? Function(AuthenticationStatePayload payload)? loggedIn,
    TResult? Function(AuthenticationStatePayload payload)? loggedOut,
    TResult? Function(AuthenticationStatePayload payload)? error,
    TResult? Function(AuthenticationStatePayload payload)? onboardRequired,
  }) {
    return loggedIn?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatePayload payload)? initial,
    TResult Function(AuthenticationStatePayload payload)? loggingIn,
    TResult Function(AuthenticationStatePayload payload)? loading,
    TResult Function(AuthenticationStatePayload payload)? loggingOut,
    TResult Function(AuthenticationStatePayload payload)? loggedIn,
    TResult Function(AuthenticationStatePayload payload)? loggedOut,
    TResult Function(AuthenticationStatePayload payload)? error,
    TResult Function(AuthenticationStatePayload payload)? onboardRequired,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_CheckingAuthenticationState value) loggingIn,
    required TResult Function(_LoadingAuthenticationState value) loading,
    required TResult Function(_LoggingOutAuthenticationState value) loggingOut,
    required TResult Function(_AuthenticationSuccessState value) loggedIn,
    required TResult Function(_AuthenticationLoggedOutState value) loggedOut,
    required TResult Function(_AuthenticationErrorState value) error,
    required TResult Function(_AuthenticationOnboardRequiredState value)
        onboardRequired,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthenticationState value)? initial,
    TResult? Function(_CheckingAuthenticationState value)? loggingIn,
    TResult? Function(_LoadingAuthenticationState value)? loading,
    TResult? Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult? Function(_AuthenticationSuccessState value)? loggedIn,
    TResult? Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult? Function(_AuthenticationErrorState value)? error,
    TResult? Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_CheckingAuthenticationState value)? loggingIn,
    TResult Function(_LoadingAuthenticationState value)? loading,
    TResult Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult Function(_AuthenticationSuccessState value)? loggedIn,
    TResult Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult Function(_AuthenticationErrorState value)? error,
    TResult Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationSuccessState implements AuthenticationState {
  const factory _AuthenticationSuccessState(
          {required final AuthenticationStatePayload payload}) =
      _$AuthenticationSuccessStateImpl;

  @override
  AuthenticationStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationSuccessStateImplCopyWith<_$AuthenticationSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationLoggedOutStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationLoggedOutStateImplCopyWith(
          _$AuthenticationLoggedOutStateImpl value,
          $Res Function(_$AuthenticationLoggedOutStateImpl) then) =
      __$$AuthenticationLoggedOutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatePayload payload});

  @override
  $AuthenticationStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$AuthenticationLoggedOutStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationLoggedOutStateImpl>
    implements _$$AuthenticationLoggedOutStateImplCopyWith<$Res> {
  __$$AuthenticationLoggedOutStateImplCopyWithImpl(
      _$AuthenticationLoggedOutStateImpl _value,
      $Res Function(_$AuthenticationLoggedOutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$AuthenticationLoggedOutStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatePayload,
    ));
  }
}

/// @nodoc

class _$AuthenticationLoggedOutStateImpl
    implements _AuthenticationLoggedOutState {
  const _$AuthenticationLoggedOutStateImpl({required this.payload});

  @override
  final AuthenticationStatePayload payload;

  @override
  String toString() {
    return 'AuthenticationState.loggedOut(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoggedOutStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationLoggedOutStateImplCopyWith<
          _$AuthenticationLoggedOutStateImpl>
      get copyWith => __$$AuthenticationLoggedOutStateImplCopyWithImpl<
          _$AuthenticationLoggedOutStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatePayload payload) initial,
    required TResult Function(AuthenticationStatePayload payload) loggingIn,
    required TResult Function(AuthenticationStatePayload payload) loading,
    required TResult Function(AuthenticationStatePayload payload) loggingOut,
    required TResult Function(AuthenticationStatePayload payload) loggedIn,
    required TResult Function(AuthenticationStatePayload payload) loggedOut,
    required TResult Function(AuthenticationStatePayload payload) error,
    required TResult Function(AuthenticationStatePayload payload)
        onboardRequired,
  }) {
    return loggedOut(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatePayload payload)? initial,
    TResult? Function(AuthenticationStatePayload payload)? loggingIn,
    TResult? Function(AuthenticationStatePayload payload)? loading,
    TResult? Function(AuthenticationStatePayload payload)? loggingOut,
    TResult? Function(AuthenticationStatePayload payload)? loggedIn,
    TResult? Function(AuthenticationStatePayload payload)? loggedOut,
    TResult? Function(AuthenticationStatePayload payload)? error,
    TResult? Function(AuthenticationStatePayload payload)? onboardRequired,
  }) {
    return loggedOut?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatePayload payload)? initial,
    TResult Function(AuthenticationStatePayload payload)? loggingIn,
    TResult Function(AuthenticationStatePayload payload)? loading,
    TResult Function(AuthenticationStatePayload payload)? loggingOut,
    TResult Function(AuthenticationStatePayload payload)? loggedIn,
    TResult Function(AuthenticationStatePayload payload)? loggedOut,
    TResult Function(AuthenticationStatePayload payload)? error,
    TResult Function(AuthenticationStatePayload payload)? onboardRequired,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_CheckingAuthenticationState value) loggingIn,
    required TResult Function(_LoadingAuthenticationState value) loading,
    required TResult Function(_LoggingOutAuthenticationState value) loggingOut,
    required TResult Function(_AuthenticationSuccessState value) loggedIn,
    required TResult Function(_AuthenticationLoggedOutState value) loggedOut,
    required TResult Function(_AuthenticationErrorState value) error,
    required TResult Function(_AuthenticationOnboardRequiredState value)
        onboardRequired,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthenticationState value)? initial,
    TResult? Function(_CheckingAuthenticationState value)? loggingIn,
    TResult? Function(_LoadingAuthenticationState value)? loading,
    TResult? Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult? Function(_AuthenticationSuccessState value)? loggedIn,
    TResult? Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult? Function(_AuthenticationErrorState value)? error,
    TResult? Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_CheckingAuthenticationState value)? loggingIn,
    TResult Function(_LoadingAuthenticationState value)? loading,
    TResult Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult Function(_AuthenticationSuccessState value)? loggedIn,
    TResult Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult Function(_AuthenticationErrorState value)? error,
    TResult Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLoggedOutState implements AuthenticationState {
  const factory _AuthenticationLoggedOutState(
          {required final AuthenticationStatePayload payload}) =
      _$AuthenticationLoggedOutStateImpl;

  @override
  AuthenticationStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationLoggedOutStateImplCopyWith<
          _$AuthenticationLoggedOutStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationErrorStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationErrorStateImplCopyWith(
          _$AuthenticationErrorStateImpl value,
          $Res Function(_$AuthenticationErrorStateImpl) then) =
      __$$AuthenticationErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatePayload payload});

  @override
  $AuthenticationStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$AuthenticationErrorStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationErrorStateImpl>
    implements _$$AuthenticationErrorStateImplCopyWith<$Res> {
  __$$AuthenticationErrorStateImplCopyWithImpl(
      _$AuthenticationErrorStateImpl _value,
      $Res Function(_$AuthenticationErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$AuthenticationErrorStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatePayload,
    ));
  }
}

/// @nodoc

class _$AuthenticationErrorStateImpl implements _AuthenticationErrorState {
  const _$AuthenticationErrorStateImpl({required this.payload});

  @override
  final AuthenticationStatePayload payload;

  @override
  String toString() {
    return 'AuthenticationState.error(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationErrorStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationErrorStateImplCopyWith<_$AuthenticationErrorStateImpl>
      get copyWith => __$$AuthenticationErrorStateImplCopyWithImpl<
          _$AuthenticationErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatePayload payload) initial,
    required TResult Function(AuthenticationStatePayload payload) loggingIn,
    required TResult Function(AuthenticationStatePayload payload) loading,
    required TResult Function(AuthenticationStatePayload payload) loggingOut,
    required TResult Function(AuthenticationStatePayload payload) loggedIn,
    required TResult Function(AuthenticationStatePayload payload) loggedOut,
    required TResult Function(AuthenticationStatePayload payload) error,
    required TResult Function(AuthenticationStatePayload payload)
        onboardRequired,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatePayload payload)? initial,
    TResult? Function(AuthenticationStatePayload payload)? loggingIn,
    TResult? Function(AuthenticationStatePayload payload)? loading,
    TResult? Function(AuthenticationStatePayload payload)? loggingOut,
    TResult? Function(AuthenticationStatePayload payload)? loggedIn,
    TResult? Function(AuthenticationStatePayload payload)? loggedOut,
    TResult? Function(AuthenticationStatePayload payload)? error,
    TResult? Function(AuthenticationStatePayload payload)? onboardRequired,
  }) {
    return error?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatePayload payload)? initial,
    TResult Function(AuthenticationStatePayload payload)? loggingIn,
    TResult Function(AuthenticationStatePayload payload)? loading,
    TResult Function(AuthenticationStatePayload payload)? loggingOut,
    TResult Function(AuthenticationStatePayload payload)? loggedIn,
    TResult Function(AuthenticationStatePayload payload)? loggedOut,
    TResult Function(AuthenticationStatePayload payload)? error,
    TResult Function(AuthenticationStatePayload payload)? onboardRequired,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_CheckingAuthenticationState value) loggingIn,
    required TResult Function(_LoadingAuthenticationState value) loading,
    required TResult Function(_LoggingOutAuthenticationState value) loggingOut,
    required TResult Function(_AuthenticationSuccessState value) loggedIn,
    required TResult Function(_AuthenticationLoggedOutState value) loggedOut,
    required TResult Function(_AuthenticationErrorState value) error,
    required TResult Function(_AuthenticationOnboardRequiredState value)
        onboardRequired,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthenticationState value)? initial,
    TResult? Function(_CheckingAuthenticationState value)? loggingIn,
    TResult? Function(_LoadingAuthenticationState value)? loading,
    TResult? Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult? Function(_AuthenticationSuccessState value)? loggedIn,
    TResult? Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult? Function(_AuthenticationErrorState value)? error,
    TResult? Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_CheckingAuthenticationState value)? loggingIn,
    TResult Function(_LoadingAuthenticationState value)? loading,
    TResult Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult Function(_AuthenticationSuccessState value)? loggedIn,
    TResult Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult Function(_AuthenticationErrorState value)? error,
    TResult Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationErrorState implements AuthenticationState {
  const factory _AuthenticationErrorState(
          {required final AuthenticationStatePayload payload}) =
      _$AuthenticationErrorStateImpl;

  @override
  AuthenticationStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationErrorStateImplCopyWith<_$AuthenticationErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationOnboardRequiredStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationOnboardRequiredStateImplCopyWith(
          _$AuthenticationOnboardRequiredStateImpl value,
          $Res Function(_$AuthenticationOnboardRequiredStateImpl) then) =
      __$$AuthenticationOnboardRequiredStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatePayload payload});

  @override
  $AuthenticationStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$AuthenticationOnboardRequiredStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationOnboardRequiredStateImpl>
    implements _$$AuthenticationOnboardRequiredStateImplCopyWith<$Res> {
  __$$AuthenticationOnboardRequiredStateImplCopyWithImpl(
      _$AuthenticationOnboardRequiredStateImpl _value,
      $Res Function(_$AuthenticationOnboardRequiredStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$AuthenticationOnboardRequiredStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatePayload,
    ));
  }
}

/// @nodoc

class _$AuthenticationOnboardRequiredStateImpl
    implements _AuthenticationOnboardRequiredState {
  const _$AuthenticationOnboardRequiredStateImpl({required this.payload});

  @override
  final AuthenticationStatePayload payload;

  @override
  String toString() {
    return 'AuthenticationState.onboardRequired(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationOnboardRequiredStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationOnboardRequiredStateImplCopyWith<
          _$AuthenticationOnboardRequiredStateImpl>
      get copyWith => __$$AuthenticationOnboardRequiredStateImplCopyWithImpl<
          _$AuthenticationOnboardRequiredStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatePayload payload) initial,
    required TResult Function(AuthenticationStatePayload payload) loggingIn,
    required TResult Function(AuthenticationStatePayload payload) loading,
    required TResult Function(AuthenticationStatePayload payload) loggingOut,
    required TResult Function(AuthenticationStatePayload payload) loggedIn,
    required TResult Function(AuthenticationStatePayload payload) loggedOut,
    required TResult Function(AuthenticationStatePayload payload) error,
    required TResult Function(AuthenticationStatePayload payload)
        onboardRequired,
  }) {
    return onboardRequired(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatePayload payload)? initial,
    TResult? Function(AuthenticationStatePayload payload)? loggingIn,
    TResult? Function(AuthenticationStatePayload payload)? loading,
    TResult? Function(AuthenticationStatePayload payload)? loggingOut,
    TResult? Function(AuthenticationStatePayload payload)? loggedIn,
    TResult? Function(AuthenticationStatePayload payload)? loggedOut,
    TResult? Function(AuthenticationStatePayload payload)? error,
    TResult? Function(AuthenticationStatePayload payload)? onboardRequired,
  }) {
    return onboardRequired?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatePayload payload)? initial,
    TResult Function(AuthenticationStatePayload payload)? loggingIn,
    TResult Function(AuthenticationStatePayload payload)? loading,
    TResult Function(AuthenticationStatePayload payload)? loggingOut,
    TResult Function(AuthenticationStatePayload payload)? loggedIn,
    TResult Function(AuthenticationStatePayload payload)? loggedOut,
    TResult Function(AuthenticationStatePayload payload)? error,
    TResult Function(AuthenticationStatePayload payload)? onboardRequired,
    required TResult orElse(),
  }) {
    if (onboardRequired != null) {
      return onboardRequired(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthenticationState value) initial,
    required TResult Function(_CheckingAuthenticationState value) loggingIn,
    required TResult Function(_LoadingAuthenticationState value) loading,
    required TResult Function(_LoggingOutAuthenticationState value) loggingOut,
    required TResult Function(_AuthenticationSuccessState value) loggedIn,
    required TResult Function(_AuthenticationLoggedOutState value) loggedOut,
    required TResult Function(_AuthenticationErrorState value) error,
    required TResult Function(_AuthenticationOnboardRequiredState value)
        onboardRequired,
  }) {
    return onboardRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthenticationState value)? initial,
    TResult? Function(_CheckingAuthenticationState value)? loggingIn,
    TResult? Function(_LoadingAuthenticationState value)? loading,
    TResult? Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult? Function(_AuthenticationSuccessState value)? loggedIn,
    TResult? Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult? Function(_AuthenticationErrorState value)? error,
    TResult? Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
  }) {
    return onboardRequired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthenticationState value)? initial,
    TResult Function(_CheckingAuthenticationState value)? loggingIn,
    TResult Function(_LoadingAuthenticationState value)? loading,
    TResult Function(_LoggingOutAuthenticationState value)? loggingOut,
    TResult Function(_AuthenticationSuccessState value)? loggedIn,
    TResult Function(_AuthenticationLoggedOutState value)? loggedOut,
    TResult Function(_AuthenticationErrorState value)? error,
    TResult Function(_AuthenticationOnboardRequiredState value)?
        onboardRequired,
    required TResult orElse(),
  }) {
    if (onboardRequired != null) {
      return onboardRequired(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationOnboardRequiredState
    implements AuthenticationState {
  const factory _AuthenticationOnboardRequiredState(
          {required final AuthenticationStatePayload payload}) =
      _$AuthenticationOnboardRequiredStateImpl;

  @override
  AuthenticationStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationOnboardRequiredStateImplCopyWith<
          _$AuthenticationOnboardRequiredStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationStatePayload {
  String get error => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  bool? get hasPerformOnboard => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStatePayloadCopyWith<AuthenticationStatePayload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStatePayloadCopyWith<$Res> {
  factory $AuthenticationStatePayloadCopyWith(AuthenticationStatePayload value,
          $Res Function(AuthenticationStatePayload) then) =
      _$AuthenticationStatePayloadCopyWithImpl<$Res,
          AuthenticationStatePayload>;
  @useResult
  $Res call({String error, UserModel? user, bool? hasPerformOnboard});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthenticationStatePayloadCopyWithImpl<$Res,
        $Val extends AuthenticationStatePayload>
    implements $AuthenticationStatePayloadCopyWith<$Res> {
  _$AuthenticationStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? user = freezed,
    Object? hasPerformOnboard = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      hasPerformOnboard: freezed == hasPerformOnboard
          ? _value.hasPerformOnboard
          : hasPerformOnboard // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticationStatePayloadImplCopyWith<$Res>
    implements $AuthenticationStatePayloadCopyWith<$Res> {
  factory _$$AuthenticationStatePayloadImplCopyWith(
          _$AuthenticationStatePayloadImpl value,
          $Res Function(_$AuthenticationStatePayloadImpl) then) =
      __$$AuthenticationStatePayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, UserModel? user, bool? hasPerformOnboard});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthenticationStatePayloadImplCopyWithImpl<$Res>
    extends _$AuthenticationStatePayloadCopyWithImpl<$Res,
        _$AuthenticationStatePayloadImpl>
    implements _$$AuthenticationStatePayloadImplCopyWith<$Res> {
  __$$AuthenticationStatePayloadImplCopyWithImpl(
      _$AuthenticationStatePayloadImpl _value,
      $Res Function(_$AuthenticationStatePayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? user = freezed,
    Object? hasPerformOnboard = freezed,
  }) {
    return _then(_$AuthenticationStatePayloadImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      hasPerformOnboard: freezed == hasPerformOnboard
          ? _value.hasPerformOnboard
          : hasPerformOnboard // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AuthenticationStatePayloadImpl implements _AuthenticationStatePayload {
  const _$AuthenticationStatePayloadImpl(
      {required this.error,
      required this.user,
      required this.hasPerformOnboard});

  @override
  final String error;
  @override
  final UserModel? user;
  @override
  final bool? hasPerformOnboard;

  @override
  String toString() {
    return 'AuthenticationStatePayload(error: $error, user: $user, hasPerformOnboard: $hasPerformOnboard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStatePayloadImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.hasPerformOnboard, hasPerformOnboard) ||
                other.hasPerformOnboard == hasPerformOnboard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, user, hasPerformOnboard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStatePayloadImplCopyWith<_$AuthenticationStatePayloadImpl>
      get copyWith => __$$AuthenticationStatePayloadImplCopyWithImpl<
          _$AuthenticationStatePayloadImpl>(this, _$identity);
}

abstract class _AuthenticationStatePayload
    implements AuthenticationStatePayload {
  const factory _AuthenticationStatePayload(
          {required final String error,
          required final UserModel? user,
          required final bool? hasPerformOnboard}) =
      _$AuthenticationStatePayloadImpl;

  @override
  String get error;
  @override
  UserModel? get user;
  @override
  bool? get hasPerformOnboard;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStatePayloadImplCopyWith<_$AuthenticationStatePayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}
