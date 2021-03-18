import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';

class ThemeActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      onPressed: () => BlocProvider.of<ThemeBloc>(context).add(ThemeChanged()),
      child: Icon(Icons.lightbulb_outline, color: Theme.of(context).scaffoldBackgroundColor),
      backgroundColor: Theme.of(context).floatingActionButtonTheme.foregroundColor,
    );
  }
}
