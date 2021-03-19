import 'package:flutter_porfolio/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/components/components.dart';
import 'package:flutter_porfolio/models/models.dart';
import 'dart:math';

ScreenAnimationEntity about = ScreenAnimationEntity(
  screenName: ScreenName.aboutScreen,
  animationScreenRotation: -pi / 2.5,
  animationXOffset: -180,
  animationYOffset: -120,
  child: Scaffold(
    floatingActionButton: ThemeActionButton(),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("AboutScreen", textAlign: TextAlign.center, style: TextStyle(fontSize: 50)),
          ],
        ),
      ),
    ),
  ),
);

