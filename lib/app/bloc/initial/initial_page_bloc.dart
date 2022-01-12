import 'dart:async';

import 'package:demo/app/bloc/initial/initial_page_event.dart';
import 'package:demo/app/bloc/initial/initial_page_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialPageBloc extends Bloc<InitialPageEvent, InitialPageState> {
  InitialPageBloc() : super(const InitialPageState.init());

  @override
  Stream<InitialPageState> mapEventToState(event) async* {
    yield* event.when(init: _init);
  }

  Stream<InitialPageState> _init() async* {
    ///Some content loading simulation
    await Future.delayed(const Duration(seconds: 1));
    yield const InitialPageState.loaded();
  }
}
