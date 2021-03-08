import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';

import 'dart:core';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Widget _mapStateToActionButton({required ThemeBloc themeBloc}) {
      void _changeTheme() {
        themeBloc.add(ThemeChanged());
      }

      return FloatingActionButton(
        onPressed: _changeTheme,
        child: Icon(Icons.lightbulb_outline),
        backgroundColor: theme.accentColor,
      );
    }

    return Scaffold(
      floatingActionButton: _mapStateToActionButton(themeBloc: BlocProvider.of<ThemeBloc>(context)),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello world", style: Theme.of(context).textTheme.headline1),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/building.jpg'),
                radius: 60
              ),
            ),
            Text("Photo by Florian Wehde on Unsplash", style: Theme.of(context).textTheme.bodyText2),
          ],
        ),
      )),
    );
  }
}
