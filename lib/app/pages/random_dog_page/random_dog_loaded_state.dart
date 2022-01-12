import 'package:demo/app/bloc/random_dog/random_dog_page_bloc.dart';
import 'package:demo/app/bloc/random_dog/random_dog_page_event.dart';
import 'package:demo/app/localization/localization.dart';
import 'package:demo/app/ui_kit/widgets/rounded_image.dart';
import 'package:demo/app/utils/constants.dart';
import 'package:demo/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomDogLoadedState extends StatelessWidget {
  final String dogPicture;

  const RandomDogLoadedState({required this.dogPicture, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: RoundedImage(url: Constants.baseUrl + dogPicture),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 12.0),
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () => _loadAnotherPicture(context),
            style: AppTheme.yellowButtonStyle,
            child: Text(context.localizations.randomDog.anotherPicture),
          ),
        )
      ],
    );
  }

  void _loadAnotherPicture(BuildContext context) {
    BlocProvider.of<RandomDogPageBloc>(context)
        .add(const RandomDogPageEvent.init());
  }
}
