import 'package:flutter/material.dart';
import 'package:flutter_porfolio/screens/screens.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Infinite Scroll',
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}