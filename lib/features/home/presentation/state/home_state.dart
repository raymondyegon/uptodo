part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({required HomeStatePayload payload}) =
      _InitialHomeState;

  const factory HomeState.error({required HomeStatePayload payload}) =
      _ErrorHomeState;

  const factory HomeState.loading({required HomeStatePayload payload}) =
      _LoadingHomeState;

  const factory HomeState.loaded({required HomeStatePayload payload}) =
      _LoadedHomeState;

  // const factory HomeState({required HomeStatePayload payload}) = _HomeState;

  factory HomeState.fromJson(Map json) => _$HomeStateFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}

@freezed
class HomeStatePayload with _$HomeStatePayload {
  const factory HomeStatePayload({
    required String error,
    @Default([]) List<TodoModel> todos,
    TodoResponseModel? todoResponse,
  }) = _HomeStatePayload;

  factory HomeStatePayload.fromJson(Map json) => _$HomeStatePayloadFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
