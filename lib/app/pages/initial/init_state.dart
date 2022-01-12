import 'package:demo/app/localization/localization.dart';
import 'package:demo/theme/app_theme.dart';
import 'package:flutter/material.dart';

class InitState extends StatelessWidget {
  const InitState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.localizations.main.loading,
        style: AppTheme.classicTextStyle,
      ),
    );
  }
}
