// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoResponseModelImpl _$$TodoResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoResponseModelImpl(
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => TodoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      limit: (json['limit'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      skip: ServerTypeTransformer.toIntFromServer(json['skip']),
    );

Map<String, dynamic> _$$TodoResponseModelImplToJson(
        _$TodoResponseModelImpl instance) =>
    <String, dynamic>{
      'todos': instance.todos.map((e) => e.toJson()).toList(),
      'limit': instance.limit,
      'total': instance.total,
      'skip': instance.skip,
    };

_$TodoModelImpl _$$TodoModelImplFromJson(Map<String, dynamic> json) =>
    _$TodoModelImpl(
      id: (json['id'] as num).toInt(),
      todo: json['todo'] as String,
      completed: json['completed'] as bool,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$TodoModelImplToJson(_$TodoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
