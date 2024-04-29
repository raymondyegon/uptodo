// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoResponseModel _$TodoResponseModelFromJson(Map<String, dynamic> json) {
  return _TodoResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TodoResponseModel {
  List<TodoModel> get todos => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @JsonKey(fromJson: ServerTypeTransformer.toIntFromServer)
  int get skip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoResponseModelCopyWith<TodoResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoResponseModelCopyWith<$Res> {
  factory $TodoResponseModelCopyWith(
          TodoResponseModel value, $Res Function(TodoResponseModel) then) =
      _$TodoResponseModelCopyWithImpl<$Res, TodoResponseModel>;
  @useResult
  $Res call(
      {List<TodoModel> todos,
      int limit,
      int total,
      @JsonKey(fromJson: ServerTypeTransformer.toIntFromServer) int skip});
}

/// @nodoc
class _$TodoResponseModelCopyWithImpl<$Res, $Val extends TodoResponseModel>
    implements $TodoResponseModelCopyWith<$Res> {
  _$TodoResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? limit = null,
    Object? total = null,
    Object? skip = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoResponseModelImplCopyWith<$Res>
    implements $TodoResponseModelCopyWith<$Res> {
  factory _$$TodoResponseModelImplCopyWith(_$TodoResponseModelImpl value,
          $Res Function(_$TodoResponseModelImpl) then) =
      __$$TodoResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TodoModel> todos,
      int limit,
      int total,
      @JsonKey(fromJson: ServerTypeTransformer.toIntFromServer) int skip});
}

/// @nodoc
class __$$TodoResponseModelImplCopyWithImpl<$Res>
    extends _$TodoResponseModelCopyWithImpl<$Res, _$TodoResponseModelImpl>
    implements _$$TodoResponseModelImplCopyWith<$Res> {
  __$$TodoResponseModelImplCopyWithImpl(_$TodoResponseModelImpl _value,
      $Res Function(_$TodoResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? limit = null,
    Object? total = null,
    Object? skip = null,
  }) {
    return _then(_$TodoResponseModelImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoResponseModelImpl implements _TodoResponseModel {
  const _$TodoResponseModelImpl(
      {final List<TodoModel> todos = const [],
      required this.limit,
      required this.total,
      @JsonKey(fromJson: ServerTypeTransformer.toIntFromServer)
      required this.skip})
      : _todos = todos;

  factory _$TodoResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoResponseModelImplFromJson(json);

  final List<TodoModel> _todos;
  @override
  @JsonKey()
  List<TodoModel> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final int limit;
  @override
  final int total;
  @override
  @JsonKey(fromJson: ServerTypeTransformer.toIntFromServer)
  final int skip;

  @override
  String toString() {
    return 'TodoResponseModel(todos: $todos, limit: $limit, total: $total, skip: $skip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoResponseModelImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todos), limit, total, skip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoResponseModelImplCopyWith<_$TodoResponseModelImpl> get copyWith =>
      __$$TodoResponseModelImplCopyWithImpl<_$TodoResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoResponseModelImplToJson(
      this,
    );
  }
}

abstract class _TodoResponseModel implements TodoResponseModel {
  const factory _TodoResponseModel(
      {final List<TodoModel> todos,
      required final int limit,
      required final int total,
      @JsonKey(fromJson: ServerTypeTransformer.toIntFromServer)
      required final int skip}) = _$TodoResponseModelImpl;

  factory _TodoResponseModel.fromJson(Map<String, dynamic> json) =
      _$TodoResponseModelImpl.fromJson;

  @override
  List<TodoModel> get todos;
  @override
  int get limit;
  @override
  int get total;
  @override
  @JsonKey(fromJson: ServerTypeTransformer.toIntFromServer)
  int get skip;
  @override
  @JsonKey(ignore: true)
  _$$TodoResponseModelImplCopyWith<_$TodoResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) {
  return _TodoModel.fromJson(json);
}

/// @nodoc
mixin _$TodoModel {
  int get id => throw _privateConstructorUsedError;
  String get todo => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoModelCopyWith<TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) =
      _$TodoModelCopyWithImpl<$Res, TodoModel>;
  @useResult
  $Res call({int id, String todo, bool completed, int userId});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res, $Val extends TodoModel>
    implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoModelImplCopyWith<$Res>
    implements $TodoModelCopyWith<$Res> {
  factory _$$TodoModelImplCopyWith(
          _$TodoModelImpl value, $Res Function(_$TodoModelImpl) then) =
      __$$TodoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String todo, bool completed, int userId});
}

/// @nodoc
class __$$TodoModelImplCopyWithImpl<$Res>
    extends _$TodoModelCopyWithImpl<$Res, _$TodoModelImpl>
    implements _$$TodoModelImplCopyWith<$Res> {
  __$$TodoModelImplCopyWithImpl(
      _$TodoModelImpl _value, $Res Function(_$TodoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_$TodoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoModelImpl implements _TodoModel {
  const _$TodoModelImpl(
      {required this.id,
      required this.todo,
      required this.completed,
      required this.userId});

  factory _$TodoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoModelImplFromJson(json);

  @override
  final int id;
  @override
  final String todo;
  @override
  final bool completed;
  @override
  final int userId;

  @override
  String toString() {
    return 'TodoModel(id: $id, todo: $todo, completed: $completed, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, todo, completed, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      __$$TodoModelImplCopyWithImpl<_$TodoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoModelImplToJson(
      this,
    );
  }
}

abstract class _TodoModel implements TodoModel {
  const factory _TodoModel(
      {required final int id,
      required final String todo,
      required final bool completed,
      required final int userId}) = _$TodoModelImpl;

  factory _TodoModel.fromJson(Map<String, dynamic> json) =
      _$TodoModelImpl.fromJson;

  @override
  int get id;
  @override
  String get todo;
  @override
  bool get completed;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
