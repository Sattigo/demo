import 'package:demo/app/ui_kit/widgets/rounded_image.dart';
import 'package:demo/app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DogsPageLoadedState extends StatelessWidget {
  final List<String> dogsPictures;

  const DogsPageLoadedState({required this.dogsPictures, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (ctx, index) {
          return RoundedImage(url: Constants.baseUrl + dogsPictures[index]);
        },
        itemCount: 10,
      ),
    );
  }
}
