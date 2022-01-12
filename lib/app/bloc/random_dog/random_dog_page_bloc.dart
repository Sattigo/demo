import 'package:demo/app/bloc/random_dog/random_dog_page_event.dart';
import 'package:demo/app/bloc/random_dog/random_dog_page_state.dart';
import 'package:demo/app/repositories/dogs/dogs_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomDogPageBloc extends Bloc<RandomDogPageEvent, RandomDogPageState> {
  final DogsRepository _dogsRepository;

  RandomDogPageBloc({required DogsRepository dogsRepository})
      : _dogsRepository = dogsRepository,
        super(const RandomDogPageState.init());

  @override
  Stream<RandomDogPageState> mapEventToState(event) async* {
    yield* event.when(init: _init);
  }

  Stream<RandomDogPageState> _init() async* {
    yield const RandomDogPageState.init();
    try {
      final result = await _dogsRepository.getWoof();
      yield RandomDogPageState.loaded(result);
    } catch (e) {
      yield const RandomDogPageState.error();
    }
  }
}
