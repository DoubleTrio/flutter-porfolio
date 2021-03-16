import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/components/components.dart';
import './components/components.dart';

class HomeScreen extends StatelessWidget {
  final int screenId;
  final double rotationZ;
  final double scale;
  final double xOffset;
  final double yOffset;
  final double borderOpacity;

  const HomeScreen({
    required Key key,
    required this.screenId,
    required this.rotationZ,
    required this.scale,
    required this.xOffset,
    required this.yOffset,
    required this.borderOpacity
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedScreen(
      key: Key("screen$screenId"),
      rotationZ: rotationZ,
      xOffset: xOffset,
      yOffset: yOffset,
      scale: scale,
      id: screenId,
      borderOpacity: borderOpacity,
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
    );
  }
}