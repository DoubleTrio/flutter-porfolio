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
                  style: theme.textTheme.bodyText2,
                  children: <TextSpan>[
                    TextSpan(
                        text: "Flutter",
                        style: theme.textTheme.bodyText2?.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: theme.primaryColor,
                            decorationThickness: 2.5
                        )
                    ),
                    TextSpan(text: " developer learning the ropes while making ", style: theme.textTheme.bodyText2),
                    TextSpan(
                        text: "knots",
                        style: theme.textTheme.bodyText2?.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: theme.accentColor,
                            decorationThickness: 2.5
                        )
                      ),
                    TextSpan(text: " on the way", style: theme.textTheme.bodyText2),
                  ]
                )
              ),
            ),
          ],
        )
    );
  }
}
