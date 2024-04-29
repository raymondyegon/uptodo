import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uptodo/core/utilities/utilities.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class TodoResponseModel with _$TodoResponseModel {
  const factory TodoResponseModel({
    @Default([]) List<TodoModel> todos,
    @JsonKey(fromJson: ServerTypeTransformer.toIntFromServer)
    required int limit,
    @JsonKey(fromJson: ServerTypeTransformer.toIntFromServer)
    required int total,
    @JsonKey(fromJson: ServerTypeTransformer.toIntFromServer) required int skip,
  }) = _TodoResponseModel;

  factory TodoResponseModel.fromJson(Map json) => _$TodoResponseModelFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    required int id,
    required String todo,
    required bool completed,
    required int userId,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map json) => _$TodoModelFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
