import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';
import 'package:flutter_porfolio/models/models.dart';

class AnimatedScreen extends StatelessWidget {
  final Widget child;
  final ScreenName screenName;
  final double rotationZ;
  final double scale;
  final double xOffset;
  final double yOffset;
  final double borderOpacity;

  AnimatedScreen({
    required Key key,
    required this.child,
    required this.screenName,
    required this.rotationZ,
    required this.scale,
    required this.xOffset,
    required this.yOffset,
    required this.borderOpacity
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => BlocProvider.of<DrawerBloc>(context).add(DrawerScreenSetted(screenName)),
      child: Transform(
        alignment: Alignment.centerRight,
        transform: Matrix4.identity()
          ..scale(scale)
          ..rotateZ(rotationZ)
          ..translate(xOffset, yOffset),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).primaryColor.withOpacity(borderOpacity),
              width: 1.5
            ),
          ),
            child: child
        ),
      ),
    );
  }
}
