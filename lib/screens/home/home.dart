import 'package:flutter/material.dart';
import 'components/components.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ThemeActionButton(),
      body: SafeArea(
        child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text("Hi", style: Theme.of(context).textTheme.headline1),
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