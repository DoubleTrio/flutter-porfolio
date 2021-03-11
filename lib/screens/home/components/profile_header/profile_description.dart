import 'package:flutter/material.dart';

class ProfileDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Expanded(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "A ",
                  style: theme.textTheme.headline6,
                  children: <TextSpan>[
                    TextSpan(
                        text: "Flutter",
                        style: theme.textTheme.headline6?.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: theme.primaryColor,
                            decorationThickness: 2.5
                        )
                    ),
                    TextSpan(text: " developer learning the ropes and making ", style: theme.textTheme.headline6),
                    TextSpan(
                        text: "knots",
                        style: theme.textTheme.headline6?.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: theme.accentColor,
                            decorationThickness: 2.5
                        )
                      ),
                    TextSpan(text: " on the way", style: theme.textTheme.headline6),
                  ]
                )
              ),
            ),
          ],
        )
    );
  }
}
