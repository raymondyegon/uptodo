// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialHomeStateImpl _$$InitialHomeStateImplFromJson(
        Map<String, dynamic> json) =>
    _$InitialHomeStateImpl(
      payload:
          HomeStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialHomeStateImplToJson(
        _$InitialHomeStateImpl instance) =>
    <String, dynamic>{
      'payload': instance.payload.toJson(),
      'runtimeType': instance.$type,
    };

_$ErrorHomeStateImpl _$$ErrorHomeStateImplFromJson(Map<String, dynamic> json) =>
    _$ErrorHomeStateImpl(
      payload:
          HomeStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorHomeStateImplToJson(
        _$ErrorHomeStateImpl instance) =>
    <String, dynamic>{
      'payload': instance.payload.toJson(),
      'runtimeType': instance.$type,
    };

_$LoadingHomeStateImpl _$$LoadingHomeStateImplFromJson(
        Map<String, dynamic> json) =>
    _$LoadingHomeStateImpl(
      payload:
          HomeStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingHomeStateImplToJson(
        _$LoadingHomeStateImpl instance) =>
    <String, dynamic>{
      'payload': instance.payload.toJson(),
      'runtimeType': instance.$type,
    };

_$LoadedHomeStateImpl _$$LoadedHomeStateImplFromJson(
        Map<String, dynamic> json) =>
    _$LoadedHomeStateImpl(
      payload:
          HomeStatePayload.fromJson(json['payload'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedHomeStateImplToJson(
        _$LoadedHomeStateImpl instance) =>
    <String, dynamic>{
      'payload': instance.payload.toJson(),
      'runtimeType': instance.$type,
    };

_$HomeStatePayloadImpl _$$HomeStatePayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeStatePayloadImpl(
      error: json['error'] as String,
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => TodoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      todoResponse: json['todoResponse'] == null
          ? null
          : TodoResponseModel.fromJson(
              json['todoResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeStatePayloadImplToJson(
        _$HomeStatePayloadImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'todos': instance.todos.map((e) => e.toJson()).toList(),
      'todoResponse': instance.todoResponse?.toJson(),
    };
