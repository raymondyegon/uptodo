// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _InitialHomeState.fromJson(json);
    case 'error':
      return _ErrorHomeState.fromJson(json);
    case 'loading':
      return _LoadingHomeState.fromJson(json);
    case 'loaded':
      return _LoadedHomeState.fromJson(json);
    case 'updating':
      return _UpdatingHomeState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HomeState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HomeState {
  HomeStatePayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStatePayload payload) initial,
    required TResult Function(HomeStatePayload payload) error,
    required TResult Function(HomeStatePayload payload) loading,
    required TResult Function(HomeStatePayload payload) loaded,
    required TResult Function(HomeStatePayload payload) updating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStatePayload payload)? initial,
    TResult? Function(HomeStatePayload payload)? error,
    TResult? Function(HomeStatePayload payload)? loading,
    TResult? Function(HomeStatePayload payload)? loaded,
    TResult? Function(HomeStatePayload payload)? updating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStatePayload payload)? initial,
    TResult Function(HomeStatePayload payload)? error,
    TResult Function(HomeStatePayload payload)? loading,
    TResult Function(HomeStatePayload payload)? loaded,
    TResult Function(HomeStatePayload payload)? updating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_ErrorHomeState value) error,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_LoadedHomeState value) loaded,
    required TResult Function(_UpdatingHomeState value) updating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_ErrorHomeState value)? error,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_LoadedHomeState value)? loaded,
    TResult? Function(_UpdatingHomeState value)? updating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_ErrorHomeState value)? error,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_LoadedHomeState value)? loaded,
    TResult Function(_UpdatingHomeState value)? updating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeStatePayload payload});

  $HomeStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
              as HomeStatePayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStatePayloadCopyWith<$Res> get payload {
    return $HomeStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialHomeStateImplCopyWith(_$InitialHomeStateImpl value,
          $Res Function(_$InitialHomeStateImpl) then) =
      __$$InitialHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStatePayload payload});

  @override
  $HomeStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$InitialHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialHomeStateImpl>
    implements _$$InitialHomeStateImplCopyWith<$Res> {
  __$$InitialHomeStateImplCopyWithImpl(_$InitialHomeStateImpl _value,
      $Res Function(_$InitialHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$InitialHomeStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as HomeStatePayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialHomeStateImpl implements _InitialHomeState {
  const _$InitialHomeStateImpl({required this.payload, final String? $type})
      : $type = $type ?? 'initial';

  factory _$InitialHomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialHomeStateImplFromJson(json);

  @override
  final HomeStatePayload payload;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeState.initial(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialHomeStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialHomeStateImplCopyWith<_$InitialHomeStateImpl> get copyWith =>
      __$$InitialHomeStateImplCopyWithImpl<_$InitialHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStatePayload payload) initial,
    required TResult Function(HomeStatePayload payload) error,
    required TResult Function(HomeStatePayload payload) loading,
    required TResult Function(HomeStatePayload payload) loaded,
    required TResult Function(HomeStatePayload payload) updating,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStatePayload payload)? initial,
    TResult? Function(HomeStatePayload payload)? error,
    TResult? Function(HomeStatePayload payload)? loading,
    TResult? Function(HomeStatePayload payload)? loaded,
    TResult? Function(HomeStatePayload payload)? updating,
  }) {
    return initial?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStatePayload payload)? initial,
    TResult Function(HomeStatePayload payload)? error,
    TResult Function(HomeStatePayload payload)? loading,
    TResult Function(HomeStatePayload payload)? loaded,
    TResult Function(HomeStatePayload payload)? updating,
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
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_ErrorHomeState value) error,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_LoadedHomeState value) loaded,
    required TResult Function(_UpdatingHomeState value) updating,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_ErrorHomeState value)? error,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_LoadedHomeState value)? loaded,
    TResult? Function(_UpdatingHomeState value)? updating,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_ErrorHomeState value)? error,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_LoadedHomeState value)? loaded,
    TResult Function(_UpdatingHomeState value)? updating,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialHomeStateImplToJson(
      this,
    );
  }
}

abstract class _InitialHomeState implements HomeState {
  const factory _InitialHomeState({required final HomeStatePayload payload}) =
      _$InitialHomeStateImpl;

  factory _InitialHomeState.fromJson(Map<String, dynamic> json) =
      _$InitialHomeStateImpl.fromJson;

  @override
  HomeStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$InitialHomeStateImplCopyWith<_$InitialHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$ErrorHomeStateImplCopyWith(_$ErrorHomeStateImpl value,
          $Res Function(_$ErrorHomeStateImpl) then) =
      __$$ErrorHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStatePayload payload});

  @override
  $HomeStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$ErrorHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorHomeStateImpl>
    implements _$$ErrorHomeStateImplCopyWith<$Res> {
  __$$ErrorHomeStateImplCopyWithImpl(
      _$ErrorHomeStateImpl _value, $Res Function(_$ErrorHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$ErrorHomeStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as HomeStatePayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorHomeStateImpl implements _ErrorHomeState {
  const _$ErrorHomeStateImpl({required this.payload, final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorHomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorHomeStateImplFromJson(json);

  @override
  final HomeStatePayload payload;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeState.error(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorHomeStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorHomeStateImplCopyWith<_$ErrorHomeStateImpl> get copyWith =>
      __$$ErrorHomeStateImplCopyWithImpl<_$ErrorHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStatePayload payload) initial,
    required TResult Function(HomeStatePayload payload) error,
    required TResult Function(HomeStatePayload payload) loading,
    required TResult Function(HomeStatePayload payload) loaded,
    required TResult Function(HomeStatePayload payload) updating,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStatePayload payload)? initial,
    TResult? Function(HomeStatePayload payload)? error,
    TResult? Function(HomeStatePayload payload)? loading,
    TResult? Function(HomeStatePayload payload)? loaded,
    TResult? Function(HomeStatePayload payload)? updating,
  }) {
    return error?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStatePayload payload)? initial,
    TResult Function(HomeStatePayload payload)? error,
    TResult Function(HomeStatePayload payload)? loading,
    TResult Function(HomeStatePayload payload)? loaded,
    TResult Function(HomeStatePayload payload)? updating,
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
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_ErrorHomeState value) error,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_LoadedHomeState value) loaded,
    required TResult Function(_UpdatingHomeState value) updating,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_ErrorHomeState value)? error,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_LoadedHomeState value)? loaded,
    TResult? Function(_UpdatingHomeState value)? updating,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_ErrorHomeState value)? error,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_LoadedHomeState value)? loaded,
    TResult Function(_UpdatingHomeState value)? updating,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorHomeStateImplToJson(
      this,
    );
  }
}

abstract class _ErrorHomeState implements HomeState {
  const factory _ErrorHomeState({required final HomeStatePayload payload}) =
      _$ErrorHomeStateImpl;

  factory _ErrorHomeState.fromJson(Map<String, dynamic> json) =
      _$ErrorHomeStateImpl.fromJson;

  @override
  HomeStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$ErrorHomeStateImplCopyWith<_$ErrorHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$LoadingHomeStateImplCopyWith(_$LoadingHomeStateImpl value,
          $Res Function(_$LoadingHomeStateImpl) then) =
      __$$LoadingHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStatePayload payload});

  @override
  $HomeStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadingHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingHomeStateImpl>
    implements _$$LoadingHomeStateImplCopyWith<$Res> {
  __$$LoadingHomeStateImplCopyWithImpl(_$LoadingHomeStateImpl _value,
      $Res Function(_$LoadingHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadingHomeStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as HomeStatePayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadingHomeStateImpl implements _LoadingHomeState {
  const _$LoadingHomeStateImpl({required this.payload, final String? $type})
      : $type = $type ?? 'loading';

  factory _$LoadingHomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadingHomeStateImplFromJson(json);

  @override
  final HomeStatePayload payload;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeState.loading(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingHomeStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingHomeStateImplCopyWith<_$LoadingHomeStateImpl> get copyWith =>
      __$$LoadingHomeStateImplCopyWithImpl<_$LoadingHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStatePayload payload) initial,
    required TResult Function(HomeStatePayload payload) error,
    required TResult Function(HomeStatePayload payload) loading,
    required TResult Function(HomeStatePayload payload) loaded,
    required TResult Function(HomeStatePayload payload) updating,
  }) {
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStatePayload payload)? initial,
    TResult? Function(HomeStatePayload payload)? error,
    TResult? Function(HomeStatePayload payload)? loading,
    TResult? Function(HomeStatePayload payload)? loaded,
    TResult? Function(HomeStatePayload payload)? updating,
  }) {
    return loading?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStatePayload payload)? initial,
    TResult Function(HomeStatePayload payload)? error,
    TResult Function(HomeStatePayload payload)? loading,
    TResult Function(HomeStatePayload payload)? loaded,
    TResult Function(HomeStatePayload payload)? updating,
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
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_ErrorHomeState value) error,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_LoadedHomeState value) loaded,
    required TResult Function(_UpdatingHomeState value) updating,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_ErrorHomeState value)? error,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_LoadedHomeState value)? loaded,
    TResult? Function(_UpdatingHomeState value)? updating,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_ErrorHomeState value)? error,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_LoadedHomeState value)? loaded,
    TResult Function(_UpdatingHomeState value)? updating,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingHomeStateImplToJson(
      this,
    );
  }
}

abstract class _LoadingHomeState implements HomeState {
  const factory _LoadingHomeState({required final HomeStatePayload payload}) =
      _$LoadingHomeStateImpl;

  factory _LoadingHomeState.fromJson(Map<String, dynamic> json) =
      _$LoadingHomeStateImpl.fromJson;

  @override
  HomeStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadingHomeStateImplCopyWith<_$LoadingHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$LoadedHomeStateImplCopyWith(_$LoadedHomeStateImpl value,
          $Res Function(_$LoadedHomeStateImpl) then) =
      __$$LoadedHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStatePayload payload});

  @override
  $HomeStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadedHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadedHomeStateImpl>
    implements _$$LoadedHomeStateImplCopyWith<$Res> {
  __$$LoadedHomeStateImplCopyWithImpl(
      _$LoadedHomeStateImpl _value, $Res Function(_$LoadedHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadedHomeStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as HomeStatePayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadedHomeStateImpl implements _LoadedHomeState {
  const _$LoadedHomeStateImpl({required this.payload, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$LoadedHomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadedHomeStateImplFromJson(json);

  @override
  final HomeStatePayload payload;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeState.loaded(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedHomeStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedHomeStateImplCopyWith<_$LoadedHomeStateImpl> get copyWith =>
      __$$LoadedHomeStateImplCopyWithImpl<_$LoadedHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStatePayload payload) initial,
    required TResult Function(HomeStatePayload payload) error,
    required TResult Function(HomeStatePayload payload) loading,
    required TResult Function(HomeStatePayload payload) loaded,
    required TResult Function(HomeStatePayload payload) updating,
  }) {
    return loaded(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStatePayload payload)? initial,
    TResult? Function(HomeStatePayload payload)? error,
    TResult? Function(HomeStatePayload payload)? loading,
    TResult? Function(HomeStatePayload payload)? loaded,
    TResult? Function(HomeStatePayload payload)? updating,
  }) {
    return loaded?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStatePayload payload)? initial,
    TResult Function(HomeStatePayload payload)? error,
    TResult Function(HomeStatePayload payload)? loading,
    TResult Function(HomeStatePayload payload)? loaded,
    TResult Function(HomeStatePayload payload)? updating,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_ErrorHomeState value) error,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_LoadedHomeState value) loaded,
    required TResult Function(_UpdatingHomeState value) updating,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_ErrorHomeState value)? error,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_LoadedHomeState value)? loaded,
    TResult? Function(_UpdatingHomeState value)? updating,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_ErrorHomeState value)? error,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_LoadedHomeState value)? loaded,
    TResult Function(_UpdatingHomeState value)? updating,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadedHomeStateImplToJson(
      this,
    );
  }
}

abstract class _LoadedHomeState implements HomeState {
  const factory _LoadedHomeState({required final HomeStatePayload payload}) =
      _$LoadedHomeStateImpl;

  factory _LoadedHomeState.fromJson(Map<String, dynamic> json) =
      _$LoadedHomeStateImpl.fromJson;

  @override
  HomeStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadedHomeStateImplCopyWith<_$LoadedHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatingHomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$UpdatingHomeStateImplCopyWith(_$UpdatingHomeStateImpl value,
          $Res Function(_$UpdatingHomeStateImpl) then) =
      __$$UpdatingHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStatePayload payload});

  @override
  $HomeStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$UpdatingHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$UpdatingHomeStateImpl>
    implements _$$UpdatingHomeStateImplCopyWith<$Res> {
  __$$UpdatingHomeStateImplCopyWithImpl(_$UpdatingHomeStateImpl _value,
      $Res Function(_$UpdatingHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$UpdatingHomeStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as HomeStatePayload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatingHomeStateImpl implements _UpdatingHomeState {
  const _$UpdatingHomeStateImpl({required this.payload, final String? $type})
      : $type = $type ?? 'updating';

  factory _$UpdatingHomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatingHomeStateImplFromJson(json);

  @override
  final HomeStatePayload payload;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeState.updating(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatingHomeStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatingHomeStateImplCopyWith<_$UpdatingHomeStateImpl> get copyWith =>
      __$$UpdatingHomeStateImplCopyWithImpl<_$UpdatingHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStatePayload payload) initial,
    required TResult Function(HomeStatePayload payload) error,
    required TResult Function(HomeStatePayload payload) loading,
    required TResult Function(HomeStatePayload payload) loaded,
    required TResult Function(HomeStatePayload payload) updating,
  }) {
    return updating(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStatePayload payload)? initial,
    TResult? Function(HomeStatePayload payload)? error,
    TResult? Function(HomeStatePayload payload)? loading,
    TResult? Function(HomeStatePayload payload)? loaded,
    TResult? Function(HomeStatePayload payload)? updating,
  }) {
    return updating?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStatePayload payload)? initial,
    TResult Function(HomeStatePayload payload)? error,
    TResult Function(HomeStatePayload payload)? loading,
    TResult Function(HomeStatePayload payload)? loaded,
    TResult Function(HomeStatePayload payload)? updating,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_ErrorHomeState value) error,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_LoadedHomeState value) loaded,
    required TResult Function(_UpdatingHomeState value) updating,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_ErrorHomeState value)? error,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_LoadedHomeState value)? loaded,
    TResult? Function(_UpdatingHomeState value)? updating,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_ErrorHomeState value)? error,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_LoadedHomeState value)? loaded,
    TResult Function(_UpdatingHomeState value)? updating,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatingHomeStateImplToJson(
      this,
    );
  }
}

abstract class _UpdatingHomeState implements HomeState {
  const factory _UpdatingHomeState({required final HomeStatePayload payload}) =
      _$UpdatingHomeStateImpl;

  factory _UpdatingHomeState.fromJson(Map<String, dynamic> json) =
      _$UpdatingHomeStateImpl.fromJson;

  @override
  HomeStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$UpdatingHomeStateImplCopyWith<_$UpdatingHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeStatePayload _$HomeStatePayloadFromJson(Map<String, dynamic> json) {
  return _HomeStatePayload.fromJson(json);
}

/// @nodoc
mixin _$HomeStatePayload {
  String get error => throw _privateConstructorUsedError;
  List<TodoModel> get todos => throw _privateConstructorUsedError;
  TodoResponseModel? get todoResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStatePayloadCopyWith<HomeStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStatePayloadCopyWith<$Res> {
  factory $HomeStatePayloadCopyWith(
          HomeStatePayload value, $Res Function(HomeStatePayload) then) =
      _$HomeStatePayloadCopyWithImpl<$Res, HomeStatePayload>;
  @useResult
  $Res call(
      {String error, List<TodoModel> todos, TodoResponseModel? todoResponse});

  $TodoResponseModelCopyWith<$Res>? get todoResponse;
}

/// @nodoc
class _$HomeStatePayloadCopyWithImpl<$Res, $Val extends HomeStatePayload>
    implements $HomeStatePayloadCopyWith<$Res> {
  _$HomeStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? todos = null,
    Object? todoResponse = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      todoResponse: freezed == todoResponse
          ? _value.todoResponse
          : todoResponse // ignore: cast_nullable_to_non_nullable
              as TodoResponseModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoResponseModelCopyWith<$Res>? get todoResponse {
    if (_value.todoResponse == null) {
      return null;
    }

    return $TodoResponseModelCopyWith<$Res>(_value.todoResponse!, (value) {
      return _then(_value.copyWith(todoResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStatePayloadImplCopyWith<$Res>
    implements $HomeStatePayloadCopyWith<$Res> {
  factory _$$HomeStatePayloadImplCopyWith(_$HomeStatePayloadImpl value,
          $Res Function(_$HomeStatePayloadImpl) then) =
      __$$HomeStatePayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error, List<TodoModel> todos, TodoResponseModel? todoResponse});

  @override
  $TodoResponseModelCopyWith<$Res>? get todoResponse;
}

/// @nodoc
class __$$HomeStatePayloadImplCopyWithImpl<$Res>
    extends _$HomeStatePayloadCopyWithImpl<$Res, _$HomeStatePayloadImpl>
    implements _$$HomeStatePayloadImplCopyWith<$Res> {
  __$$HomeStatePayloadImplCopyWithImpl(_$HomeStatePayloadImpl _value,
      $Res Function(_$HomeStatePayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? todos = null,
    Object? todoResponse = freezed,
  }) {
    return _then(_$HomeStatePayloadImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      todoResponse: freezed == todoResponse
          ? _value.todoResponse
          : todoResponse // ignore: cast_nullable_to_non_nullable
              as TodoResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStatePayloadImpl implements _HomeStatePayload {
  const _$HomeStatePayloadImpl(
      {required this.error,
      final List<TodoModel> todos = const [],
      this.todoResponse})
      : _todos = todos;

  factory _$HomeStatePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStatePayloadImplFromJson(json);

  @override
  final String error;
  final List<TodoModel> _todos;
  @override
  @JsonKey()
  List<TodoModel> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final TodoResponseModel? todoResponse;

  @override
  String toString() {
    return 'HomeStatePayload(error: $error, todos: $todos, todoResponse: $todoResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStatePayloadImpl &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.todoResponse, todoResponse) ||
                other.todoResponse == todoResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error,
      const DeepCollectionEquality().hash(_todos), todoResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStatePayloadImplCopyWith<_$HomeStatePayloadImpl> get copyWith =>
      __$$HomeStatePayloadImplCopyWithImpl<_$HomeStatePayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStatePayloadImplToJson(
      this,
    );
  }
}

abstract class _HomeStatePayload implements HomeStatePayload {
  const factory _HomeStatePayload(
      {required final String error,
      final List<TodoModel> todos,
      final TodoResponseModel? todoResponse}) = _$HomeStatePayloadImpl;

  factory _HomeStatePayload.fromJson(Map<String, dynamic> json) =
      _$HomeStatePayloadImpl.fromJson;

  @override
  String get error;
  @override
  List<TodoModel> get todos;
  @override
  TodoResponseModel? get todoResponse;
  @override
  @JsonKey(ignore: true)
  _$$HomeStatePayloadImplCopyWith<_$HomeStatePayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
