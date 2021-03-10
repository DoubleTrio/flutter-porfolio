import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/screens/home/components/drawer_bar.dart';
import 'components/components.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      floatingActionButton: ThemeActionButton(),
      body: SafeArea(
        child: Container(
        width: double.infinity,
        height: double.infinity,
          child: CustomPaint(
            painter: CurvePainter(backgroundColor: theme.backgroundColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DrawerBar(),
                  CircleAvatar(backgroundImage: AssetImage("assets/images/pfp.png"), radius: 70),
                  NameHeader(),
                  ProfileDescription(),
                ],
              ),
            )
          ),
      )),
    );
  }
}