import 'package:flutter_porfolio/models/models.dart';
import 'components/components.dart';
import 'package:flutter/material.dart';
import 'dart:math';

ScreenAnimationEntity projects =  ScreenAnimationEntity(
  id: 0,
  animationScreenRotation: -pi / 3.5,
  animationXOffset: -20,
  animationYOffset: 0,
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