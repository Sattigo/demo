import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_dog_page_event.freezed.dart';

@freezed
class RandomDogPageEvent with _$RandomDogPageEvent {
  const factory RandomDogPageEvent.init() = _Init;
}
