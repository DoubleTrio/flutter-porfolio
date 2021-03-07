import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'SanFrancisco'),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    accentColor: Color(0xFFFF715B),
  );
}