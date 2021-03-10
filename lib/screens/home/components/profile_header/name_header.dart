import 'package:flutter/material.dart';

class NameHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "< ",
        style: theme.textTheme.bodyText2?.copyWith(color: theme.accentColor),
        children: <TextSpan>[
          TextSpan(text: "Kace", style: theme.textTheme.headline6),
          TextSpan(text: " >", style: theme.textTheme.bodyText2?.copyWith(color: theme.accentColor)),
        ]
      )
    );
  }
}
