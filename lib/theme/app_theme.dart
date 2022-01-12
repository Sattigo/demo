import 'package:demo/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final base = ThemeData();
    return base.copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
        foregroundColor: Colors.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: blackButtonStyle),
      textTheme: _buildAppTextTheme(base.textTheme),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith();
  }

  static TextTheme _buildAppTextTheme(TextTheme base) {
    return base.copyWith(
      bodyText1: base.bodyText1?.copyWith(
        fontFamily: 'SFProText',
        fontSize: 20.0,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.7,
        height: 1.33,
        color: AppColors.lightBody1TextColor,
      ),
      headline5: base.headline5?.copyWith(
        fontFamily: 'SFProDisplay',
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.36,
        height: 1.1,
      ),
      overline: base.overline?.copyWith(
        fontFamily: 'SFProText',
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.15,
        height: 1.0,
        color: AppColors.lightOverLineTextColor,
        decoration: TextDecoration.underline,
      ),
    );
  }

  static ButtonStyle get blackButtonStyle {
    return ButtonStyle(
        textStyle: MaterialStateProperty.all(const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          fontFamily: 'SFProText',
        )),
        minimumSize: MaterialStateProperty.all(const Size(0, 56.0)),
        backgroundColor: MaterialStateProperty.all(Colors.black),
        elevation: MaterialStateProperty.all(0.0),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 31.0)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))));
  }

  static ButtonStyle get yellowButtonStyle {
    return ButtonStyle(
        textStyle: MaterialStateProperty.all(const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          fontFamily: 'SFProText',
        )),
        minimumSize: MaterialStateProperty.all(const Size(0, 56.0)),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        backgroundColor: MaterialStateProperty.all(AppColors.yellow),
        elevation: MaterialStateProperty.all(0.0),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 31.0)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))));
  }

  static TextStyle get classicTextStyle {
    return const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 17.0,
      fontWeight: FontWeight.w900,
      letterSpacing: -0.4,
      height: 1.04,
      color: Colors.black,
    );
  }
}
