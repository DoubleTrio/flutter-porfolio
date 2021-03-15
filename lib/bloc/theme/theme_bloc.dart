
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'theme.dart';


class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
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

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    return ThemeState(ThemeMode.values[json['themeMode'] as int]);
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    return <String, int>{'themeMode': state.themeMode.index };
  }
}