import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/screens/home/components/drawer_bar.dart';
import 'package:flutter_porfolio/screens/home/components/project_body/project_body.dart';
import 'components/components.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    print(theme.backgroundColor);
    return Scaffold(
      floatingActionButton: ThemeActionButton(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DrawerBar(),
              CircleAvatar(backgroundImage: AssetImage("assets/images/pfp.png"), radius: 70),
              NameHeader(),
              ProfileDescription(),
              ProjectBody(),
            ],
          ),
        )),
    );
  }
}

