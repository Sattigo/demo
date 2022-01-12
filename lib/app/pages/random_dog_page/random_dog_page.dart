import 'package:demo/app/bloc/random_dog/random_dog_page_bloc.dart';
import 'package:demo/app/bloc/random_dog/random_dog_page_event.dart';
import 'package:demo/app/bloc/random_dog/random_dog_page_state.dart';
import 'package:demo/app/pages/dogs_page/dogs_page_error_state.dart';
import 'package:demo/app/pages/dogs_page/dogs_page_init_state.dart';
import 'package:demo/app/pages/random_dog_page/random_dog_loaded_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomDogPage extends StatelessWidget {
  const RandomDogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RandomDogPageBloc, RandomDogPageState>(
        builder: (ctx, state) {
          return state.when(
              init: () => const DogsPageInitState(),
              loaded: (pictures) => RandomDogLoadedState(dogPicture: pictures),
              error: () => DogsPageErrorState(reload: () => _reload(context)));
        },
      ),
    );
  }

  void _reload(BuildContext context) {
    BlocProvider.of<RandomDogPageBloc>(context)
        .add(const RandomDogPageEvent.init());
  }
}
