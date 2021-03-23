import 'package:flutter_porfolio/bloc/blocs.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/models/models.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  setUp(() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory(),
    );
  });

  group("DrawerBloc", () {
    blocTest<DrawerBloc, DrawerState>("emits [] when DrawerBloc is initialized",
      build: () => DrawerBloc(),
      expect: () => []
    );

    blocTest<DrawerBloc, DrawerState>("emits DrawerScreen(ScreenName.blogName) when DrawerClosed is added",
      build: () => DrawerBloc(),
      act: (bloc) => bloc.add(DrawerClosed(ScreenName.blogScreen)),
      expect: () => [DrawerScreen(ScreenName.blogScreen)]
    );

    blocTest<DrawerBloc, DrawerState>("emits DrawerOpen() when DrawerOpened is added",
      build: () => DrawerBloc(),
      act: (bloc) => bloc..add(DrawerOpened())..close(),
      expect: () => [DrawerOpen()]
    );
  });

  group("ThemeBloc", () {
    blocTest<ThemeBloc, ThemeState>("emits [] when ThemeBloc is initialized",
      build: () => ThemeBloc(),
      expect: () => []
    );
    
    blocTest<ThemeBloc, ThemeState>("emits [ThemeState(ThemeMode.dark)] when ThemeChanged() is added ",
      build: () => ThemeBloc(),
      seed: () => ThemeState(ThemeMode.light),
      act: (bloc) => bloc..add(ThemeChanged())..close(),
      expect: () => [ThemeState(ThemeMode.dark)]
    );

    blocTest<ThemeBloc, ThemeState>("emits [ThemeState(ThemeMode.light), ThemeState(ThemeMode.dark)] when ThemeChanged() is added twice",
      build: () => ThemeBloc(),
      seed: () => ThemeState(ThemeMode.dark),
      act: (bloc) => bloc..add(ThemeChanged())..add(ThemeChanged())..close(),
      expect: () => [ThemeState(ThemeMode.light), ThemeState(ThemeMode.dark)]
    );
  });
}