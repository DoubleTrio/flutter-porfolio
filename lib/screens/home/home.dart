import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/components/components.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../screen_entities.dart';
import './components/components.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {


  List<AnimatedScreen> reorderStack(List<AnimatedScreen> screens, int index) {
    AnimatedScreen frontScreen = screens.removeAt(index);
    return [...screens, frontScreen];
  }

  @override
  Widget build(BuildContext context) {

    return AnimatedScreen(
      id: 1,
      key: Key("1"),
      child: Scaffold(
        floatingActionButton: ThemeActionButton(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DrawerBar(),
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/building.jpg"),
                    radius: 70
                ),
                NameHeader(),
                ProfileDescription(),
                ProjectBody()
              ],
            ),
          ),
        ),
      ),
      animationScreenRotation: -pi / 2.5,
      xOffset: -200,
      yOffset: -150,
    );
  }
}