import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_dog_page_state.freezed.dart';

@freezed
class RandomDogPageState with _$RandomDogPageState {
  const factory RandomDogPageState.init() = _Init;

  const factory RandomDogPageState.loaded(String photo) = _Loaded;

  const factory RandomDogPageState.error() = _Error;
}
