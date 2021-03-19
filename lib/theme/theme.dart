import 'package:flutter/material.dart';

Color darkScaffold = Color(0xFF111111);
Color lightScaffold = Color(0xFFF5F5F5);
Color lightPrimaryColor = Colors.deepPurpleAccent;
Color darkPrimaryColor = Colors.lightGreenAccent;

ThemeData lightTheme = ThemeData(
  fontFamily: 'ProximaNova',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 112.0, color: darkScaffold),
    headline2: TextStyle(fontSize: 56.0, color: darkScaffold),
    headline3: TextStyle(fontSize: 45.0, color: darkScaffold),
    headline4: TextStyle(fontSize: 36.0, color: darkScaffold),
    headline5: TextStyle(fontSize: 24.0, color: darkScaffold),
    headline6: TextStyle(fontSize: 20.0, color: darkScaffold),
    caption: TextStyle(fontSize: 18.0, color: lightScaffold),
    bodyText1: TextStyle(fontSize: 14.0, color: darkScaffold),
    bodyText2: TextStyle(fontSize: 14.0, color: darkScaffold),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: lightPrimaryColor,
  ),
  iconTheme: IconThemeData(color: darkScaffold.withAlpha(200), size: 28),
  primaryColor: lightPrimaryColor,
  scaffoldBackgroundColor: lightScaffold,
  backgroundColor: Colors.black12.withAlpha(20),
  brightness: Brightness.light,
  accentColor: Colors.orange,
  bottomAppBarColor: Color(0xFFEBEBEB),
  highlightColor: lightPrimaryColor,
  splashColor: lightPrimaryColor,
  dividerColor: Colors.grey.shade600,
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'ProximaNova',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 112.0, color: lightScaffold),
    headline2: TextStyle(fontSize: 56.0, color: lightScaffold),
    headline3: TextStyle(fontSize: 45.0, color: lightScaffold),
    headline4: TextStyle(fontSize: 36.0, color: lightScaffold),
    headline5: TextStyle(fontSize: 24.0, color: lightScaffold),
    headline6: TextStyle(fontSize: 20.0, color: lightScaffold),
    caption: TextStyle(fontSize: 18.0, color: lightScaffold),
    bodyText1: TextStyle(fontSize: 14.0, color: lightScaffold),
    bodyText2: TextStyle(fontSize: 14.0, color: lightScaffold),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: darkPrimaryColor,
  ),
  iconTheme: IconThemeData(color: lightScaffold.withAlpha(200), size: 28),
  primaryColor: darkPrimaryColor,
  scaffoldBackgroundColor: darkScaffold,
  backgroundColor: Colors.white10.withAlpha(12),
  brightness: Brightness.dark,
  accentColor: Colors.redAccent,
  bottomAppBarColor: Color(0x99171717),
  highlightColor: darkPrimaryColor,
  splashColor: darkPrimaryColor,
  dividerColor: Color(0xFF050505),
);