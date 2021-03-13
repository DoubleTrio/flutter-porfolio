import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/screens/home/components/drawer_bar.dart';
import 'package:flutter_porfolio/screens/home/components/project_body/project_body.dart';
import 'components/components.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController animationController;

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
    animationController.isDismissed
        ? animationController.forward()
        : animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final scale = 0.5;

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
                          ))
                      ;
                    }),
              ),
            ],
          ),
          GestureDetector(
            onTap: toggle,
            child: AnimatedBuilder(
              animation: animationController,
              builder: (context, _) {
                return Transform(
                  alignment: Alignment.centerRight,
                  transform: Matrix4.identity()
                    ..scale(1 - animationController.value * scale)
                    ..rotateZ(animationController.value * -pi/4),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(color: theme.accentColor.withAlpha((animationController.value * 255).round()), width: 1)),

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
                  ),
                );
              }
            ),
          ),
          GestureDetector(
            onTap: toggle,
            child: AnimatedBuilder(
                animation: animationController,
                builder: (context, _) {
                  return Transform(
                    alignment: Alignment.centerRight,
                    transform: Matrix4.identity()
                      ..scale(1 - animationController.value * scale)
                      ..rotateZ(animationController.value * -pi/2.5)..translate(animationController.value * -200, animationController.value * -150),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: theme.accentColor.withAlpha((animationController.value * 255).round()), width: 1)),

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
                    ),
                  );
                }
            ),
          ),
          GestureDetector(
            onTap: toggle,
            child: AnimatedBuilder(
                animation: animationController,
                builder: (context, _) {
                  return Transform(
                    alignment: Alignment.centerRight,
                    transform: Matrix4.identity()
                      ..scale(1 - animationController.value * scale)
                      ..rotateZ(animationController.value * -pi/1.7)..translate(animationController.value * -200, animationController.value * -375),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: theme.accentColor.withAlpha((animationController.value * 255).round()), width: 1)),

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
                    ),
                  );
                }
            ),
          ),
        ],
      );
  }
}
