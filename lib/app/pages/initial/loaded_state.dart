import 'package:demo/app/bloc/dogs/dogs_page_bloc.dart';
import 'package:demo/app/bloc/dogs/dogs_page_event.dart';
import 'package:demo/app/bloc/random_dog/random_dog_page_bloc.dart';
import 'package:demo/app/bloc/random_dog/random_dog_page_event.dart';
import 'package:demo/app/localization/localization.dart';
import 'package:demo/app/pages/dogs_page/dogs_page.dart';
import 'package:demo/app/pages/random_dog_page/random_dog_page.dart';
import 'package:demo/app/repositories/dogs/dogs_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadedState extends StatelessWidget {
  const LoadedState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  onPressed: () => _dogsPage(context),
                  child: Text(context.localizations.main.firstPage),
                ),
              ),
              ElevatedButton(
                onPressed: () => _randomDogPage(context),
                child: Text(context.localizations.main.secondPage),
              ),
            ]),
      ),
    );
  }

  void _dogsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => BlocProvider<DogsPageBloc>(
              create: (_) =>
                  DogsPageBloc(dogsRepository: context.read<DogsRepository>())
                    ..add(const DogsPageEvent.init()),
              child: const DogsPage(),
            )));
  }

  void _randomDogPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => BlocProvider<RandomDogPageBloc>(
              create: (_) => RandomDogPageBloc(
                  dogsRepository: context.read<DogsRepository>())
                ..add(const RandomDogPageEvent.init()),
              child: const RandomDogPage(),
            )));
  }
}
