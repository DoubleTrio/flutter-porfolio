import 'package:flutter_porfolio/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/components/components.dart';
import 'dart:math';
import 'package:flutter_porfolio/models/models.dart';

ScreenAnimationEntity blog = ScreenAnimationEntity(
  screenName: ScreenName.blogScreen,
  child: Scaffold(
    floatingActionButton: ThemeActionButton(),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BlogScreen", textAlign: TextAlign.center, style: TextStyle(fontSize: 50)),
          ],
        ),
      ),
    ),
  ),
  animationScreenRotation: -pi / 2,
  animationXOffset: -315,
  animationYOffset: -250,
);