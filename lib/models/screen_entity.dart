import 'package:flutter/material.dart';
import 'package:flutter_porfolio/models/models.dart';

class ScreenAnimationEntity {
  final Widget child;
  final ScreenName screenName;
  final double animationScreenRotation;
  final double animationXOffset;
  final double animationYOffset;

  ScreenAnimationEntity({
    required this.child,
    required this.screenName,
    required this.animationScreenRotation,
    required this.animationXOffset,
    required this.animationYOffset
  });
}