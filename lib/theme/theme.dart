import 'package:flutter/material.dart';

Color darkScaffold = Color(0xFF111111);
Color lightScaffold = Colors.white;
Color primaryColor = Colors.deepPurpleAccent;

ThemeData lightTheme = ThemeData(
  fontFamily: 'ProximaNova',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, color: darkScaffold),
    headline3: TextStyle(fontSize: 48.0, color: darkScaffold),
    headline6: TextStyle(fontSize: 36.0, color: darkScaffold),
    bodyText2: TextStyle(fontSize: 20.0, color: darkScaffold),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: primaryColor,
  ),
  primaryColor: primaryColor,
  scaffoldBackgroundColor: lightScaffold,
  backgroundColor: Colors.black12.withAlpha(15),
  brightness: Brightness.light,
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'ProximaNova',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, color: lightScaffold),
    headline3: TextStyle(fontSize: 48.0, color: lightScaffold),
    headline6: TextStyle(fontSize: 36.0, color: lightScaffold),
    bodyText2: TextStyle(fontSize: 20.0, color: lightScaffold),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: primaryColor,
  ),
  primaryColor: primaryColor,
  scaffoldBackgroundColor: darkScaffold,
  backgroundColor: Colors.white10.withAlpha(10),
  brightness: Brightness.dark,
);