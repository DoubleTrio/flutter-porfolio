import 'package:flutter/material.dart';
import 'components/components.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      floatingActionButton: ThemeActionButton(),
      body: SafeArea(
        child: Container(
        width: double.infinity,
          child: CustomPaint(
            painter: CurvePainter(backgroundColor: theme.backgroundColor),
            child:  Column(
              children: [
                Text("Hi", style: theme.textTheme.headline3),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/building.jpg'),
                      radius: 60
                  ),
                ),
                Text("Photo by Florian Wehde on Unsplash", style: theme.textTheme.bodyText2),
              ],
            ),
          ),
      )),
    );
  }
}