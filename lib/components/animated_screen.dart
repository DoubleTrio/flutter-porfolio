import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  final Widget child;
  final AnimationController animationController;
  final double animationScreenRotation;
  final Key? key;
  final VoidCallback? onPress;
  final double animationScreenScale;
  final double xOffset;
  final double yOffset;

  AnimatedScreen({
    required this.child,
    required this.animationController,
    required this.animationScreenRotation,
    this.key,
    this.onPress,
    this.animationScreenScale = 0.5,
    this.xOffset = 0,
    this.yOffset = 0,
  }): super(key: key);

  @override
  _AnimatedScreenState createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    AnimationController animationController = widget.animationController;
    return GestureDetector(
      onTap: widget.onPress,
      child: AnimatedBuilder(
          animation: animationController,
          builder: (context, _) {
            return Transform(
              alignment: Alignment.centerRight,
              transform: Matrix4.identity()
                ..scale(1 - animationController.value * widget.animationScreenScale)
                ..rotateZ(animationController.value * widget.animationScreenRotation)
                ..translate(animationController.value * widget.xOffset, animationController.value * widget.yOffset),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: theme.primaryColor.withAlpha((animationController.value * 255).round()),
                    width: 1
                  )
                ),
                child: widget.child
              ),
            );
          }
      ),
    );
  }
}
