import 'package:flutter_porfolio/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/components/components.dart';
import 'dart:math';

ScreenAnimationEntity about = ScreenAnimationEntity(
  id: 2,
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
  animationScreenRotation: -pi / 2,
  animationXOffset: -315,
  animationYOffset: -250,
);

