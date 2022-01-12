import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_page_event.freezed.dart';

@freezed
class InitialPageEvent with _$InitialPageEvent {
  const factory InitialPageEvent.init() = _Init;
}
