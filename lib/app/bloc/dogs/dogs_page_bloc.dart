import 'package:demo/app/bloc/dogs/dogs_page_event.dart';
import 'package:demo/app/bloc/dogs/dogs_page_state.dart';
import 'package:demo/app/repositories/dogs/dogs_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogsPageBloc extends Bloc<DogsPageEvent, DogsPageState> {
  final DogsRepository _dogsRepository;

  DogsPageBloc({required DogsRepository dogsRepository})
      : _dogsRepository = dogsRepository,
        super(const DogsPageState.init());

  @override
  Stream<DogsPageState> mapEventToState(event) async* {
    yield* event.when(init: _init);
  }

  Stream<DogsPageState> _init() async* {
    yield const DogsPageState.init();
    try {
      final result = await _dogsRepository.getDogs();
      yield DogsPageState.loaded(result);
    } catch (e) {
      yield const DogsPageState.error();
    }
  }
}
