import 'package:flutter/material.dart';

class ProjectHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text("My Works",
      style: theme.textTheme.headline5?.copyWith(
        decoration: TextDecoration.underline,
        decorationColor: theme.accentColor,
        decorationThickness: 4
      )
    );
  }
}
