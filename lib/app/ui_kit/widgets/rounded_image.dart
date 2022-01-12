import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final double cornerRadius;
  final String url;

  const RoundedImage({
    required this.url,
    this.cornerRadius = 8.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(cornerRadius)),
      child: Image.network(
        url,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.low,
      ),
    );
  }
}
