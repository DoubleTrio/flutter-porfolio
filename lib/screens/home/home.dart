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
  final List<String> navHeaders = [
    "Projects",
    "Skills",
    "Message Me",
    "Social Media"
  ];


  // List<ScreenAnimationEntity> reorderStack(List<ScreenAnimationEntity> screenEntities, int index) {
  //   ScreenAnimationEntity frontEntity = screenEntities.removeAt(index);
  //   return [...screenEntities, frontEntity];
  // }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    // screenAnimations = reorderStack(screenAnimations, selectedScreenId);

    return Stack(
      children: [
        Row(
          children: [
            Expanded(child: Container(color: Colors.black54)),
            Container(
              color: theme.bottomAppBarColor,
              width: size.width,
              padding: EdgeInsets.all(12),
              child: ListView.builder(
                itemCount: navHeaders.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    splashColor: theme.accentColor,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      child: Text(navHeaders[index]),
                    )
                  );
                }
              ),
            ),
          ],
        ),
        AnimatedScreen(
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
        )
      ],
    );
  }
}