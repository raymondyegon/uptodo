// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardingState _$OnboardingStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _InitialOnboardingState.fromJson(json);
    case 'fetching':
      return _FetchingOnboardingState.fromJson(json);
    case 'loaded':
      return _LoadedOnboardingState.fromJson(json);
    case 'error':
      return _ErrorOnboardingState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OnboardingState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OnboardingState {
  bool? get visitedOnboarding => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? visitedOnboarding) initial,
    required TResult Function(bool? visitedOnboarding) fetching,
    required TResult Function(bool? visitedOnboarding) loaded,
    required TResult Function(bool? visitedOnboarding) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? visitedOnboarding)? initial,
    TResult? Function(bool? visitedOnboarding)? fetching,
    TResult? Function(bool? visitedOnboarding)? loaded,
    TResult? Function(bool? visitedOnboarding)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? visitedOnboarding)? initial,
    TResult Function(bool? visitedOnboarding)? fetching,
    TResult Function(bool? visitedOnboarding)? loaded,
    TResult Function(bool? visitedOnboarding)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialOnboardingState value) initial,
    required TResult Function(_FetchingOnboardingState value) fetching,
    required TResult Function(_LoadedOnboardingState value) loaded,
    required TResult Function(_ErrorOnboardingState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialOnboardingState value)? initial,
    TResult? Function(_FetchingOnboardingState value)? fetching,
    TResult? Function(_LoadedOnboardingState value)? loaded,
    TResult? Function(_ErrorOnboardingState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialOnboardingState value)? initial,
    TResult Function(_FetchingOnboardingState value)? fetching,
    TResult Function(_LoadedOnboardingState value)? loaded,
    TResult Function(_ErrorOnboardingState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call({bool? visitedOnboarding});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedOnboarding = freezed,
  }) {
    return _then(_value.copyWith(
      visitedOnboarding: freezed == visitedOnboarding
          ? _value.visitedOnboarding
          : visitedOnboarding // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialOnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_InitialOnboardingStateCopyWith(_$_InitialOnboardingState value,
          $Res Function(_$_InitialOnboardingState) then) =
      __$$_InitialOnboardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? visitedOnboarding});
}

/// @nodoc
class __$$_InitialOnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$_InitialOnboardingState>
    implements _$$_InitialOnboardingStateCopyWith<$Res> {
  __$$_InitialOnboardingStateCopyWithImpl(_$_InitialOnboardingState _value,
      $Res Function(_$_InitialOnboardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedOnboarding = freezed,
  }) {
    return _then(_$_InitialOnboardingState(
      visitedOnboarding: freezed == visitedOnboarding
          ? _value.visitedOnboarding
          : visitedOnboarding // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitialOnboardingState implements _InitialOnboardingState {
  const _$_InitialOnboardingState({this.visitedOnboarding, final String? $type})
      : $type = $type ?? 'initial';

  factory _$_InitialOnboardingState.fromJson(Map<String, dynamic> json) =>
      _$$_InitialOnboardingStateFromJson(json);

  @override
  final bool? visitedOnboarding;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingState.initial(visitedOnboarding: $visitedOnboarding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialOnboardingState &&
            (identical(other.visitedOnboarding, visitedOnboarding) ||
                other.visitedOnboarding == visitedOnboarding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visitedOnboarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialOnboardingStateCopyWith<_$_InitialOnboardingState> get copyWith =>
      __$$_InitialOnboardingStateCopyWithImpl<_$_InitialOnboardingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? visitedOnboarding) initial,
    required TResult Function(bool? visitedOnboarding) fetching,
    required TResult Function(bool? visitedOnboarding) loaded,
    required TResult Function(bool? visitedOnboarding) error,
  }) {
    return initial(visitedOnboarding);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? visitedOnboarding)? initial,
    TResult? Function(bool? visitedOnboarding)? fetching,
    TResult? Function(bool? visitedOnboarding)? loaded,
    TResult? Function(bool? visitedOnboarding)? error,
  }) {
    return initial?.call(visitedOnboarding);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? visitedOnboarding)? initial,
    TResult Function(bool? visitedOnboarding)? fetching,
    TResult Function(bool? visitedOnboarding)? loaded,
    TResult Function(bool? visitedOnboarding)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(visitedOnboarding);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialOnboardingState value) initial,
    required TResult Function(_FetchingOnboardingState value) fetching,
    required TResult Function(_LoadedOnboardingState value) loaded,
    required TResult Function(_ErrorOnboardingState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialOnboardingState value)? initial,
    TResult? Function(_FetchingOnboardingState value)? fetching,
    TResult? Function(_LoadedOnboardingState value)? loaded,
    TResult? Function(_ErrorOnboardingState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialOnboardingState value)? initial,
    TResult Function(_FetchingOnboardingState value)? fetching,
    TResult Function(_LoadedOnboardingState value)? loaded,
    TResult Function(_ErrorOnboardingState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitialOnboardingStateToJson(
      this,
    );
  }
}

abstract class _InitialOnboardingState implements OnboardingState {
  const factory _InitialOnboardingState({final bool? visitedOnboarding}) =
      _$_InitialOnboardingState;

  factory _InitialOnboardingState.fromJson(Map<String, dynamic> json) =
      _$_InitialOnboardingState.fromJson;

  @override
  bool? get visitedOnboarding;
  @override
  @JsonKey(ignore: true)
  _$$_InitialOnboardingStateCopyWith<_$_InitialOnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchingOnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_FetchingOnboardingStateCopyWith(_$_FetchingOnboardingState value,
          $Res Function(_$_FetchingOnboardingState) then) =
      __$$_FetchingOnboardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? visitedOnboarding});
}

/// @nodoc
class __$$_FetchingOnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$_FetchingOnboardingState>
    implements _$$_FetchingOnboardingStateCopyWith<$Res> {
  __$$_FetchingOnboardingStateCopyWithImpl(_$_FetchingOnboardingState _value,
      $Res Function(_$_FetchingOnboardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedOnboarding = freezed,
  }) {
    return _then(_$_FetchingOnboardingState(
      visitedOnboarding: freezed == visitedOnboarding
          ? _value.visitedOnboarding
          : visitedOnboarding // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchingOnboardingState implements _FetchingOnboardingState {
  const _$_FetchingOnboardingState(
      {this.visitedOnboarding, final String? $type})
      : $type = $type ?? 'fetching';

  factory _$_FetchingOnboardingState.fromJson(Map<String, dynamic> json) =>
      _$$_FetchingOnboardingStateFromJson(json);

  @override
  final bool? visitedOnboarding;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingState.fetching(visitedOnboarding: $visitedOnboarding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchingOnboardingState &&
            (identical(other.visitedOnboarding, visitedOnboarding) ||
                other.visitedOnboarding == visitedOnboarding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visitedOnboarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchingOnboardingStateCopyWith<_$_FetchingOnboardingState>
      get copyWith =>
          __$$_FetchingOnboardingStateCopyWithImpl<_$_FetchingOnboardingState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? visitedOnboarding) initial,
    required TResult Function(bool? visitedOnboarding) fetching,
    required TResult Function(bool? visitedOnboarding) loaded,
    required TResult Function(bool? visitedOnboarding) error,
  }) {
    return fetching(visitedOnboarding);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? visitedOnboarding)? initial,
    TResult? Function(bool? visitedOnboarding)? fetching,
    TResult? Function(bool? visitedOnboarding)? loaded,
    TResult? Function(bool? visitedOnboarding)? error,
  }) {
    return fetching?.call(visitedOnboarding);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? visitedOnboarding)? initial,
    TResult Function(bool? visitedOnboarding)? fetching,
    TResult Function(bool? visitedOnboarding)? loaded,
    TResult Function(bool? visitedOnboarding)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(visitedOnboarding);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialOnboardingState value) initial,
    required TResult Function(_FetchingOnboardingState value) fetching,
    required TResult Function(_LoadedOnboardingState value) loaded,
    required TResult Function(_ErrorOnboardingState value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialOnboardingState value)? initial,
    TResult? Function(_FetchingOnboardingState value)? fetching,
    TResult? Function(_LoadedOnboardingState value)? loaded,
    TResult? Function(_ErrorOnboardingState value)? error,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialOnboardingState value)? initial,
    TResult Function(_FetchingOnboardingState value)? fetching,
    TResult Function(_LoadedOnboardingState value)? loaded,
    TResult Function(_ErrorOnboardingState value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchingOnboardingStateToJson(
      this,
    );
  }
}

abstract class _FetchingOnboardingState implements OnboardingState {
  const factory _FetchingOnboardingState({final bool? visitedOnboarding}) =
      _$_FetchingOnboardingState;

  factory _FetchingOnboardingState.fromJson(Map<String, dynamic> json) =
      _$_FetchingOnboardingState.fromJson;

  @override
  bool? get visitedOnboarding;
  @override
  @JsonKey(ignore: true)
  _$$_FetchingOnboardingStateCopyWith<_$_FetchingOnboardingState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedOnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_LoadedOnboardingStateCopyWith(_$_LoadedOnboardingState value,
          $Res Function(_$_LoadedOnboardingState) then) =
      __$$_LoadedOnboardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? visitedOnboarding});
}

/// @nodoc
class __$$_LoadedOnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$_LoadedOnboardingState>
    implements _$$_LoadedOnboardingStateCopyWith<$Res> {
  __$$_LoadedOnboardingStateCopyWithImpl(_$_LoadedOnboardingState _value,
      $Res Function(_$_LoadedOnboardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedOnboarding = freezed,
  }) {
    return _then(_$_LoadedOnboardingState(
      visitedOnboarding: freezed == visitedOnboarding
          ? _value.visitedOnboarding
          : visitedOnboarding // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoadedOnboardingState implements _LoadedOnboardingState {
  const _$_LoadedOnboardingState({this.visitedOnboarding, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$_LoadedOnboardingState.fromJson(Map<String, dynamic> json) =>
      _$$_LoadedOnboardingStateFromJson(json);

  @override
  final bool? visitedOnboarding;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingState.loaded(visitedOnboarding: $visitedOnboarding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedOnboardingState &&
            (identical(other.visitedOnboarding, visitedOnboarding) ||
                other.visitedOnboarding == visitedOnboarding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visitedOnboarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedOnboardingStateCopyWith<_$_LoadedOnboardingState> get copyWith =>
      __$$_LoadedOnboardingStateCopyWithImpl<_$_LoadedOnboardingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? visitedOnboarding) initial,
    required TResult Function(bool? visitedOnboarding) fetching,
    required TResult Function(bool? visitedOnboarding) loaded,
    required TResult Function(bool? visitedOnboarding) error,
  }) {
    return loaded(visitedOnboarding);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? visitedOnboarding)? initial,
    TResult? Function(bool? visitedOnboarding)? fetching,
    TResult? Function(bool? visitedOnboarding)? loaded,
    TResult? Function(bool? visitedOnboarding)? error,
  }) {
    return loaded?.call(visitedOnboarding);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? visitedOnboarding)? initial,
    TResult Function(bool? visitedOnboarding)? fetching,
    TResult Function(bool? visitedOnboarding)? loaded,
    TResult Function(bool? visitedOnboarding)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(visitedOnboarding);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialOnboardingState value) initial,
    required TResult Function(_FetchingOnboardingState value) fetching,
    required TResult Function(_LoadedOnboardingState value) loaded,
    required TResult Function(_ErrorOnboardingState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialOnboardingState value)? initial,
    TResult? Function(_FetchingOnboardingState value)? fetching,
    TResult? Function(_LoadedOnboardingState value)? loaded,
    TResult? Function(_ErrorOnboardingState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialOnboardingState value)? initial,
    TResult Function(_FetchingOnboardingState value)? fetching,
    TResult Function(_LoadedOnboardingState value)? loaded,
    TResult Function(_ErrorOnboardingState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadedOnboardingStateToJson(
      this,
    );
  }
}

abstract class _LoadedOnboardingState implements OnboardingState {
  const factory _LoadedOnboardingState({final bool? visitedOnboarding}) =
      _$_LoadedOnboardingState;

  factory _LoadedOnboardingState.fromJson(Map<String, dynamic> json) =
      _$_LoadedOnboardingState.fromJson;

  @override
  bool? get visitedOnboarding;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedOnboardingStateCopyWith<_$_LoadedOnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorOnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_ErrorOnboardingStateCopyWith(_$_ErrorOnboardingState value,
          $Res Function(_$_ErrorOnboardingState) then) =
      __$$_ErrorOnboardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? visitedOnboarding});
}

/// @nodoc
class __$$_ErrorOnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$_ErrorOnboardingState>
    implements _$$_ErrorOnboardingStateCopyWith<$Res> {
  __$$_ErrorOnboardingStateCopyWithImpl(_$_ErrorOnboardingState _value,
      $Res Function(_$_ErrorOnboardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedOnboarding = freezed,
  }) {
    return _then(_$_ErrorOnboardingState(
      visitedOnboarding: freezed == visitedOnboarding
          ? _value.visitedOnboarding
          : visitedOnboarding // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorOnboardingState implements _ErrorOnboardingState {
  const _$_ErrorOnboardingState({this.visitedOnboarding, final String? $type})
      : $type = $type ?? 'error';

  factory _$_ErrorOnboardingState.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorOnboardingStateFromJson(json);

  @override
  final bool? visitedOnboarding;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingState.error(visitedOnboarding: $visitedOnboarding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorOnboardingState &&
            (identical(other.visitedOnboarding, visitedOnboarding) ||
                other.visitedOnboarding == visitedOnboarding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visitedOnboarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorOnboardingStateCopyWith<_$_ErrorOnboardingState> get copyWith =>
      __$$_ErrorOnboardingStateCopyWithImpl<_$_ErrorOnboardingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? visitedOnboarding) initial,
    required TResult Function(bool? visitedOnboarding) fetching,
    required TResult Function(bool? visitedOnboarding) loaded,
    required TResult Function(bool? visitedOnboarding) error,
  }) {
    return error(visitedOnboarding);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? visitedOnboarding)? initial,
    TResult? Function(bool? visitedOnboarding)? fetching,
    TResult? Function(bool? visitedOnboarding)? loaded,
    TResult? Function(bool? visitedOnboarding)? error,
  }) {
    return error?.call(visitedOnboarding);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? visitedOnboarding)? initial,
    TResult Function(bool? visitedOnboarding)? fetching,
    TResult Function(bool? visitedOnboarding)? loaded,
    TResult Function(bool? visitedOnboarding)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(visitedOnboarding);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialOnboardingState value) initial,
    required TResult Function(_FetchingOnboardingState value) fetching,
    required TResult Function(_LoadedOnboardingState value) loaded,
    required TResult Function(_ErrorOnboardingState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialOnboardingState value)? initial,
    TResult? Function(_FetchingOnboardingState value)? fetching,
    TResult? Function(_LoadedOnboardingState value)? loaded,
    TResult? Function(_ErrorOnboardingState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialOnboardingState value)? initial,
    TResult Function(_FetchingOnboardingState value)? fetching,
    TResult Function(_LoadedOnboardingState value)? loaded,
    TResult Function(_ErrorOnboardingState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorOnboardingStateToJson(
      this,
    );
  }
}

abstract class _ErrorOnboardingState implements OnboardingState {
  const factory _ErrorOnboardingState({final bool? visitedOnboarding}) =
      _$_ErrorOnboardingState;

  factory _ErrorOnboardingState.fromJson(Map<String, dynamic> json) =
      _$_ErrorOnboardingState.fromJson;

  @override
  bool? get visitedOnboarding;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorOnboardingStateCopyWith<_$_ErrorOnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}
