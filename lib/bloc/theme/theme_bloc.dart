import 'dart:async';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:bloc/bloc.dart';


class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(ThemeMode.light));

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChanged) {
      yield* _mapThemeChangedToState();
    }
  }

  Stream<ThemeState> _mapThemeChangedToState() async* {
    final appTheme = state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    yield ThemeState(appTheme);
  }
}
