import 'package:flutter/material.dart';
import 'package:flutter_porfolio/screens/custom_drawer.dart';
import 'package:flutter_porfolio/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';
import 'screen_entities.dart';

import 'package:flutter_porfolio/screens/home/components/components.dart';
import 'dart:math';

class ScreenStack extends StatefulWidget {
  @override
  _ScreenStackState createState() => _ScreenStackState();
}

class _ScreenStackState extends State<ScreenStack> with SingleTickerProviderStateMixin {
  bool _canBeDragged = false;
  final double maxSlide = 300.0;
  List<ScreenAnimationEntity> screenAnimationEntities = [
    ScreenAnimationEntity(
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
    ),

    ScreenAnimationEntity(
      id: 1,
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
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/building.jpg"),
                    radius: 70
                ),
                NameHeader(),
              ],
            ),
          ),
        ),
      ),
    ),

    ScreenAnimationEntity(
      id: 2,
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
              ],
            ),
          ),
        ),
      ),
      animationScreenRotation: -pi / 2,
      animationXOffset: -315,
      animationYOffset: -250,
    )
  ];
  late final AnimationController animationController = AnimationController(
    duration: const Duration(seconds: 0, milliseconds: 700),
    vsync: this
  );

  List<ScreenAnimationEntity> reorderStack(List<ScreenAnimationEntity> screens, int id) {
    ScreenAnimationEntity frontScreen = screens.firstWhere((screen) => screen.id == id);
    return [...screens, frontScreen];
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  bool drawerClosed() {
    return animationController.isDismissed;
  }

  void openDrawer() {
    if (drawerClosed()) {
      animationController.forward();
    }
  }

  void closeDrawer() {
    if (!drawerClosed()) {
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

        if (state is DrawerScreenSet) {
          bool isSameScreen = state.id == screenAnimationEntities.last.id;
          if (!isSameScreen) {
            screenAnimationEntities = reorderStack(screenAnimationEntities, state.id);
          }
          closeDrawer();
        }
      },

      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {

          double animationValue = animationController.value;
          double scale = 1 - (animationValue * 0.55);
          double borderOpacity = animationValue * 0.75;

          List<AnimatedScreen> screenAnimations = screenAnimationEntities.map((entity) {
            double xOffset = entity.animationXOffset * animationValue;
            double yOffset = entity.animationYOffset * animationValue;
            double rotation = entity.animationScreenRotation * animationValue;

            return AnimatedScreen(
              key: Key("screen${entity.id}"),
              child: entity.child,
              id: entity.id,
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
