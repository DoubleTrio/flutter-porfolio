import 'package:flutter/material.dart';
import 'screens.dart';

class ScreenStack extends StatelessWidget {
  final List<String> navHeaders = [
    "Projects",
    "Skills",
    "Message Me",
    "Social Media"
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            Expanded(child: Container(color: Colors.black54)),
            Container(
              color: theme.bottomAppBarColor,
              width: size.width,
              padding: EdgeInsets.all(12),
              child: ListView.builder(
                  itemCount: navHeaders.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        splashColor: theme.accentColor,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          width: double.infinity,
                          child: Text(navHeaders[index]),
                        )
                    );
                  }
              ),
            ),
          ],
        ),
        HomeScreen(),
      ],
    );
  }
}
