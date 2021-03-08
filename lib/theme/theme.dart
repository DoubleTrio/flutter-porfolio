import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, color: Colors.black),
      headline6: TextStyle(fontSize: 36.0, color: Colors.black),
      bodyText2: TextStyle(fontSize: 20.0, color: Colors.black),
    ),

    visualDensity: VisualDensity.adaptivePlatformDensity,
    accentColor: Color(0xFFFBEEAC),
    fontFamily: 'ProximaNova',
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    primaryColor: Color(0xFF28527A),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, color: Colors.white),
      headline6: TextStyle(fontSize: 36.0, color: Colors.white),
      bodyText2: TextStyle(fontSize: 20.0, color: Colors.white),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    accentColor: Color(0xFFFBEEAC),
    fontFamily: 'ProximaNova',
    scaffoldBackgroundColor: Color(0xFF111111),
    primaryColor: Color(0xFFFFFFFF),
  );
}