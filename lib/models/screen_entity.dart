import 'package:flutter/material.dart';

class ScreenAnimationEntity {
  final Widget child;
  final int id;
  final double animationScreenRotation;
  final double animationXOffset;
  final double animationYOffset;

  ScreenAnimationEntity({
    required this.child,
    required this.id,
    required this.animationScreenRotation,
    required this.animationXOffset,
    required this.animationYOffset
  });
}