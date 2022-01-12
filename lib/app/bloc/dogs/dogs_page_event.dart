import 'package:freezed_annotation/freezed_annotation.dart';

part 'dogs_page_event.freezed.dart';

@freezed
class DogsPageEvent with _$DogsPageEvent {
  const factory DogsPageEvent.init() = _Init;
}
