import 'package:flutter/material.dart';

Color darkScaffold = Color(0xFF111111);
Color lightScaffold = Colors.white;

ThemeData baseThemeData = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  accentColor: Color(0xFFFBEEAC),
  fontFamily: 'ProximaNova',
  primaryColor: Color(0xFF28527A),
);

ThemeData lightTheme = baseThemeData.copyWith(
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, color: darkScaffold),
    headline6: TextStyle(fontSize: 36.0, color: darkScaffold),
    bodyText2: TextStyle(fontSize: 20.0, color: darkScaffold),
  ),
  scaffoldBackgroundColor: lightScaffold,
);

ThemeData darkTheme = baseThemeData.copyWith(
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, color: lightScaffold),
    headline6: TextStyle(fontSize: 36.0, color: lightScaffold),
    bodyText2: TextStyle(fontSize: 20.0, color: lightScaffold),
  ),
  scaffoldBackgroundColor: darkScaffold,
);
