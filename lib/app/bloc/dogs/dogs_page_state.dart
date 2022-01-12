import 'package:freezed_annotation/freezed_annotation.dart';

part 'dogs_page_state.freezed.dart';

@freezed
class DogsPageState with _$DogsPageState {
  const factory DogsPageState.init() = _Init;

  const factory DogsPageState.loaded(List<String> photos) = _Loaded;

  const factory DogsPageState.error() = _Error;
}
