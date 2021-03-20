import 'package:flutter_porfolio/bloc/blocs.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/models/models.dart';

void main() {
  group("DrawerBloc", () {
    blocTest<DrawerBloc, DrawerState>("Drawer state is initially blank when initialized",
      build: () => DrawerBloc(),
      expect: () => []
    );

    blocTest<DrawerBloc, DrawerState>("Drawer sets screen to the blog screen",
      build: () => DrawerBloc(),
      act: (bloc) => bloc.add(DrawerScreenSetted(ScreenName.blogScreen)),
      expect: () => [DrawerScreenSet(ScreenName.blogScreen)]
    );

    blocTest<DrawerBloc, DrawerState>("Drawer is opened",
      build: () => DrawerBloc(),
      act: (bloc) => bloc.add(DrawerOpened()),
      expect: () => [DrawerOpen()]
    );
  });
}