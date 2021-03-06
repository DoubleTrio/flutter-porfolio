import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';

class ThemeActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void _changeTheme() {
      BlocProvider.of<ThemeBloc>(context).add(ThemeChanged());
    }

    return FloatingActionButton(
      onPressed: _changeTheme,
      child: Icon(Icons.lightbulb_outline, color: Theme.of(context).scaffoldBackgroundColor),
      backgroundColor: Theme.of(context).floatingActionButtonTheme.foregroundColor,
    );
  }
}
