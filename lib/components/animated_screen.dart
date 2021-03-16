import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';

class AnimatedScreen extends StatefulWidget {
  final Widget child;
  final int id;
  final double animationScreenRotation;
  final double animationScreenScale;
  final double xOffset;
  final double yOffset;

  const AnimatedScreen({
    required Key key,
    required this.child,
    required this.id,
    required this.animationScreenRotation,
    this.animationScreenScale = 0.5,
    this.xOffset = 0,
    this.yOffset = 0,
  }) : super(key: key);

  @override
  _AnimatedScreenState createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  int selectedScreenId = 1;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(duration: const Duration(seconds: 0, milliseconds: 500), vsync: this);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  bool isDrawerClosed() {
    return animationController.isDismissed;
  }

  void openDrawer() {
    if (isDrawerClosed()) {
      animationController.forward();
    }
  }

  void closeDrawer() {
    if (!isDrawerClosed()) {
      animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    double animationValue = animationController.value;
    double scale = 1 - animationValue * widget.animationScreenScale;
    double rotationZ = animationValue * widget.animationScreenRotation;
    double xOffset = animationValue * widget.xOffset;
    double yOffset = animationValue * widget.yOffset;

    return BlocListener<DrawerBloc, DrawerState>(
      listener: (context, state) {
        if (state is DrawerOpen) {
          openDrawer();
        }

        if (state is DrawerScreenSet) {
          closeDrawer();
        }
      },
      child: GestureDetector(
        onTap: () => BlocProvider.of<DrawerBloc>(context).add(DrawerScreenSetted(widget.id)),
        child: AnimatedBuilder(
            animation: animationController,
            builder: (context, _) {
              final opacity = (animationValue * 255).toInt();
              return Transform(
                alignment: Alignment.centerRight,
                transform: Matrix4.identity()
                  ..scale(scale)
                  ..rotateZ(rotationZ)
                  ..translate(xOffset, yOffset),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: theme.primaryColor.withAlpha(opacity),
                        width: 1
                      )
                    ),
                    child: widget.child
                ),
              );
          }),
      ),
    );
  }
}