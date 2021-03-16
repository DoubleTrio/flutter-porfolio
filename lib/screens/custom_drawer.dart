import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final List<String> navHeaders = [
    "Projects",
    "Skills",
    "Message Me",
    "Social Media"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).bottomAppBarColor,
      width: double.infinity,
      padding: EdgeInsets.all(12),
      child: ListView.builder(
          itemCount: navHeaders.length,
          itemBuilder: (context, index) {
            return InkWell(
                splashColor: Theme.of(context).accentColor,
                child: Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  child: Text(navHeaders[index]),
                )
            );
          }
      )
    );
  }
}
