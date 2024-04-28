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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$InitialOnboardingStateImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$InitialOnboardingStateImplCopyWith(
          _$InitialOnboardingStateImpl value,
          $Res Function(_$InitialOnboardingStateImpl) then) =
      __$$InitialOnboardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? visitedOnboarding});
}

/// @nodoc
class __$$InitialOnboardingStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$InitialOnboardingStateImpl>
    implements _$$InitialOnboardingStateImplCopyWith<$Res> {
  __$$InitialOnboardingStateImplCopyWithImpl(
      _$InitialOnboardingStateImpl _value,
      $Res Function(_$InitialOnboardingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedOnboarding = freezed,
  }) {
    return _then(_$InitialOnboardingStateImpl(
      visitedOnboarding: freezed == visitedOnboarding
          ? _value.visitedOnboarding
          : visitedOnboarding // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialOnboardingStateImpl implements _InitialOnboardingState {
  const _$InitialOnboardingStateImpl(
      {this.visitedOnboarding, final String? $type})
      : $type = $type ?? 'initial';

  factory _$InitialOnboardingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialOnboardingStateImplFromJson(json);

  @override
  final bool? visitedOnboarding;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingState.initial(visitedOnboarding: $visitedOnboarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialOnboardingStateImpl &&
            (identical(other.visitedOnboarding, visitedOnboarding) ||
                other.visitedOnboarding == visitedOnboarding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visitedOnboarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialOnboardingStateImplCopyWith<_$InitialOnboardingStateImpl>
      get copyWith => __$$InitialOnboardingStateImplCopyWithImpl<
          _$InitialOnboardingStateImpl>(this, _$identity);

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
    return _$$InitialOnboardingStateImplToJson(
      this,
    );
  }
}

abstract class _InitialOnboardingState implements OnboardingState {
  const factory _InitialOnboardingState({final bool? visitedOnboarding}) =
      _$InitialOnboardingStateImpl;

  factory _InitialOnboardingState.fromJson(Map<String, dynamic> json) =
      _$InitialOnboardingStateImpl.fromJson;

  @override
  bool? get visitedOnboarding;
  @override
  @JsonKey(ignore: true)
  _$$InitialOnboardingStateImplCopyWith<_$InitialOnboardingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchingOnboardingStateImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$FetchingOnboardingStateImplCopyWith(
          _$FetchingOnboardingStateImpl value,
          $Res Function(_$FetchingOnboardingStateImpl) then) =
      __$$FetchingOnboardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? visitedOnboarding});
}

/// @nodoc
class __$$FetchingOnboardingStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$FetchingOnboardingStateImpl>
    implements _$$FetchingOnboardingStateImplCopyWith<$Res> {
  __$$FetchingOnboardingStateImplCopyWithImpl(
      _$FetchingOnboardingStateImpl _value,
      $Res Function(_$FetchingOnboardingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedOnboarding = freezed,
  }) {
    return _then(_$FetchingOnboardingStateImpl(
      visitedOnboarding: freezed == visitedOnboarding
          ? _value.visitedOnboarding
          : visitedOnboarding // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchingOnboardingStateImpl implements _FetchingOnboardingState {
  const _$FetchingOnboardingStateImpl(
      {this.visitedOnboarding, final String? $type})
      : $type = $type ?? 'fetching';

  factory _$FetchingOnboardingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchingOnboardingStateImplFromJson(json);

  @override
  final bool? visitedOnboarding;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingState.fetching(visitedOnboarding: $visitedOnboarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchingOnboardingStateImpl &&
            (identical(other.visitedOnboarding, visitedOnboarding) ||
                other.visitedOnboarding == visitedOnboarding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visitedOnboarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchingOnboardingStateImplCopyWith<_$FetchingOnboardingStateImpl>
      get copyWith => __$$FetchingOnboardingStateImplCopyWithImpl<
          _$FetchingOnboardingStateImpl>(this, _$identity);

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
    return _$$FetchingOnboardingStateImplToJson(
      this,
    );
  }
}

abstract class _FetchingOnboardingState implements OnboardingState {
  const factory _FetchingOnboardingState({final bool? visitedOnboarding}) =
      _$FetchingOnboardingStateImpl;

  factory _FetchingOnboardingState.fromJson(Map<String, dynamic> json) =
      _$FetchingOnboardingStateImpl.fromJson;

  @override
  bool? get visitedOnboarding;
  @override
  @JsonKey(ignore: true)
  _$$FetchingOnboardingStateImplCopyWith<_$FetchingOnboardingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedOnboardingStateImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$LoadedOnboardingStateImplCopyWith(
          _$LoadedOnboardingStateImpl value,
          $Res Function(_$LoadedOnboardingStateImpl) then) =
      __$$LoadedOnboardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? visitedOnboarding});
}

/// @nodoc
class __$$LoadedOnboardingStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$LoadedOnboardingStateImpl>
    implements _$$LoadedOnboardingStateImplCopyWith<$Res> {
  __$$LoadedOnboardingStateImplCopyWithImpl(_$LoadedOnboardingStateImpl _value,
      $Res Function(_$LoadedOnboardingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedOnboarding = freezed,
  }) {
    return _then(_$LoadedOnboardingStateImpl(
      visitedOnboarding: freezed == visitedOnboarding
          ? _value.visitedOnboarding
          : visitedOnboarding // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadedOnboardingStateImpl implements _LoadedOnboardingState {
  const _$LoadedOnboardingStateImpl(
      {this.visitedOnboarding, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$LoadedOnboardingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadedOnboardingStateImplFromJson(json);

  @override
  final bool? visitedOnboarding;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingState.loaded(visitedOnboarding: $visitedOnboarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedOnboardingStateImpl &&
            (identical(other.visitedOnboarding, visitedOnboarding) ||
                other.visitedOnboarding == visitedOnboarding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visitedOnboarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedOnboardingStateImplCopyWith<_$LoadedOnboardingStateImpl>
      get copyWith => __$$LoadedOnboardingStateImplCopyWithImpl<
          _$LoadedOnboardingStateImpl>(this, _$identity);

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
    return _$$LoadedOnboardingStateImplToJson(
      this,
    );
  }
}

abstract class _LoadedOnboardingState implements OnboardingState {
  const factory _LoadedOnboardingState({final bool? visitedOnboarding}) =
      _$LoadedOnboardingStateImpl;

  factory _LoadedOnboardingState.fromJson(Map<String, dynamic> json) =
      _$LoadedOnboardingStateImpl.fromJson;

  @override
  bool? get visitedOnboarding;
  @override
  @JsonKey(ignore: true)
  _$$LoadedOnboardingStateImplCopyWith<_$LoadedOnboardingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorOnboardingStateImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$ErrorOnboardingStateImplCopyWith(_$ErrorOnboardingStateImpl value,
          $Res Function(_$ErrorOnboardingStateImpl) then) =
      __$$ErrorOnboardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? visitedOnboarding});
}

/// @nodoc
class __$$ErrorOnboardingStateImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$ErrorOnboardingStateImpl>
    implements _$$ErrorOnboardingStateImplCopyWith<$Res> {
  __$$ErrorOnboardingStateImplCopyWithImpl(_$ErrorOnboardingStateImpl _value,
      $Res Function(_$ErrorOnboardingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitedOnboarding = freezed,
  }) {
    return _then(_$ErrorOnboardingStateImpl(
      visitedOnboarding: freezed == visitedOnboarding
          ? _value.visitedOnboarding
          : visitedOnboarding // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorOnboardingStateImpl implements _ErrorOnboardingState {
  const _$ErrorOnboardingStateImpl(
      {this.visitedOnboarding, final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorOnboardingStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorOnboardingStateImplFromJson(json);

  @override
  final bool? visitedOnboarding;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingState.error(visitedOnboarding: $visitedOnboarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorOnboardingStateImpl &&
            (identical(other.visitedOnboarding, visitedOnboarding) ||
                other.visitedOnboarding == visitedOnboarding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visitedOnboarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorOnboardingStateImplCopyWith<_$ErrorOnboardingStateImpl>
      get copyWith =>
          __$$ErrorOnboardingStateImplCopyWithImpl<_$ErrorOnboardingStateImpl>(
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
    return _$$ErrorOnboardingStateImplToJson(
      this,
    );
  }
}

abstract class _ErrorOnboardingState implements OnboardingState {
  const factory _ErrorOnboardingState({final bool? visitedOnboarding}) =
      _$ErrorOnboardingStateImpl;

  factory _ErrorOnboardingState.fromJson(Map<String, dynamic> json) =
      _$ErrorOnboardingStateImpl.fromJson;

  @override
  bool? get visitedOnboarding;
  @override
  @JsonKey(ignore: true)
  _$$ErrorOnboardingStateImplCopyWith<_$ErrorOnboardingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
