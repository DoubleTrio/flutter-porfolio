import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';

class ThemeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
      return Switch(
        activeColor: Theme.of(context).primaryColor,
        value: state.themeMode == ThemeMode.dark,
        onChanged: (bool _) => BlocProvider.of<ThemeBloc>(context).add(ThemeChanged()));
    });
  }
}
