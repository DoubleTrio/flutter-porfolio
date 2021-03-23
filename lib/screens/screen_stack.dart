import 'package:flutter/material.dart';
import 'package:flutter_porfolio/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';
import 'package:flutter_porfolio/models/models.dart';
import 'custom_drawer.dart';
import 'screens.dart';

class ScreenStack extends StatefulWidget {
  @override
  _ScreenStackState createState() => _ScreenStackState();
}

class _ScreenStackState extends State<ScreenStack> with SingleTickerProviderStateMixin {
  bool _canBeDragged = false;
  final double maxSlide = 300.0;

  List<ScreenAnimationEntity> screenAnimationEntities = [
    blog,
    projects,
    about,
  ];

  late final AnimationController animationController = AnimationController(
    duration: const Duration(seconds: 0, milliseconds: 700),
    vsync: this
  );

  List<ScreenAnimationEntity> reorderStack(List<ScreenAnimationEntity> screens, ScreenName screenName) {
    ScreenAnimationEntity frontScreen = screens.firstWhere((screen) => screen.screenName == screenName);
    return [...screens, frontScreen];
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

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = animationController.isDismissed;
    bool isDragCloseFromRight = animationController.isCompleted;
    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta! / maxSlide;
      animationController.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {

    double _kMinFlingVelocity = 365.0;
    if (animationController.isDismissed || animationController.isCompleted) {
      return;
    }

    if (details.velocity.pixelsPerSecond.dx.abs() >= _kMinFlingVelocity) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      animationController.fling(velocity: visualVelocity);
    } else if (animationController.value < 0.5) {
      animationController.reverse();
    } else {
      animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<DrawerBloc, DrawerState>(
      listener: (context, state) {
        if (state is DrawerOpen) {
          openDrawer();
        }

        if (state is DrawerScreen) {
          bool isSameScreenSelected = state.screenName == screenAnimationEntities.last.screenName;
          if (!isSameScreenSelected) {
            screenAnimationEntities = reorderStack(screenAnimationEntities, state.screenName);
          }
          closeDrawer();
        }
      },

      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {

          double animationValue = animationController.value;
          double scale = 1 - (animationValue * 0.50);
          double borderOpacity = animationValue * 1;

          List<AnimatedScreen> screenAnimations = screenAnimationEntities.map((entity) {
            double xOffset = entity.animationXOffset * animationValue;
            double yOffset = entity.animationYOffset * animationValue;
            double rotation = entity.animationScreenRotation * animationValue;

            return AnimatedScreen(
              key: Key("${entity.screenName}"),
              child: entity.child,
              screenName: entity.screenName,
              rotationZ: rotation,
              scale: scale,
              xOffset: xOffset,
              yOffset: yOffset,
              borderOpacity: borderOpacity
            );
          }).toList();


          return GestureDetector(
            onHorizontalDragStart: _onDragStart,
            onHorizontalDragUpdate: _onDragUpdate,
            onHorizontalDragEnd: _onDragEnd,
            behavior: HitTestBehavior.translucent,
            child: Stack(
              children: [
                CustomDrawer(),
                ...screenAnimations
              ],
            ),
          );
        },
      ),
    );
  }
}
