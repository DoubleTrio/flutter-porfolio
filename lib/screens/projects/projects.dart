import 'package:flutter_porfolio/models/models.dart';
import 'components/components.dart';
import 'package:flutter/material.dart';
import 'dart:math';

ScreenAnimationEntity projects =  ScreenAnimationEntity(
  screenName: ScreenName.projectScreen,
  animationScreenRotation: -pi / 2.5,
  animationXOffset: -180,
  animationYOffset: -120,
  child: Scaffold(
    floatingActionButton: ThemeActionButton(),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DrawerBar(),
            ProjectBody()
          ],
        ),
      ),
    ),
  ),
);