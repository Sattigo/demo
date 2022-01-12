import 'package:demo/app/localization/localization.dart';
import 'package:demo/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DogsPageErrorState extends StatelessWidget {
  final VoidCallback reload;

  const DogsPageErrorState({required this.reload, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(context.localizations.dogsPage.error),
          ),
          ElevatedButton(
              onPressed: reload,
              style: AppTheme.yellowButtonStyle,
              child: Text(context.localizations.dogsPage.reloadPage))
        ],
      ),
    );
  }
}
