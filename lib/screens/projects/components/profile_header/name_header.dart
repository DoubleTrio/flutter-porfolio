import 'package:flutter/material.dart';

class NameHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "< ",
        style: theme.textTheme.headline5?.copyWith(color: theme.accentColor),
        children: <TextSpan>[
          TextSpan(text: "Kacey", style: theme.textTheme.headline4),
          TextSpan(text: " >", style: theme.textTheme.headline5?.copyWith(color: theme.accentColor)),
        ]
      )
    );
  }
}
