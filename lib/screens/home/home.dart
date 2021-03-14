import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/screens/home/components/drawer_bar.dart';
import 'package:flutter_porfolio/screens/home/components/work_body/project_body.dart';
import 'package:flutter_porfolio/components/components.dart';

import 'components/components.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController animationController;
  int selectedScreenId = 2;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 0, milliseconds: 500), vsync: this);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void toggle() {
    if (animationController.isDismissed) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    List<Widget> screenStack = [
      AnimatedScreen(
        key: Key("0"),
        child: Scaffold(
          floatingActionButton: ThemeActionButton(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DrawerBar(),
                  CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/images/building.jpg"),
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
        animationController: animationController,
        animationScreenRotation: -pi / 4,
        xOffset: 0,
        yOffset: 0,
        onPress: toggle,
      ),

      AnimatedScreen(
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
                      backgroundImage: AssetImage(
                          "assets/images/building.jpg"),
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
        animationController: animationController,
        animationScreenRotation: -pi / 2.5,
        xOffset: -200,
        yOffset: -150,
        onPress: toggle,
      ),

      AnimatedScreen(
        key: Key("2"),
        child: Scaffold(
          floatingActionButton: ThemeActionButton(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DrawerBar(),
                  CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/images/building.jpg"),
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
        animationController: animationController,
        animationScreenRotation: -pi / 1.7,
        xOffset: -200,
        yOffset: -350,
        onPress: toggle,
      )
    ];

    List<String> navHeaders = [
      "Projects",
      "Skills",
      "Message Me",
      "Social Media"
    ];

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
          ...screenStack,
        ],
      );
  }
}
