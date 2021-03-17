import 'package:flutter/material.dart';

class ProfileDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    TextStyle? neutralTextStyle = theme.textTheme.headline6;
    TextStyle? primaryUnderlineTextStyle = theme.textTheme.headline6?.copyWith(
        decoration: TextDecoration.underline,
        decorationColor: theme.primaryColor,
        decorationThickness: 2.5
    );
    TextStyle? accentUnderlineTextStyle = primaryUnderlineTextStyle?.copyWith(decorationColor: theme.accentColor);

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Expanded(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "A ",
                  style: neutralTextStyle,
                  children: <TextSpan>[
                    TextSpan(
                        text: "Flutter",
                        style: primaryUnderlineTextStyle
                    ),
                    TextSpan(text: " and ", style: neutralTextStyle),
                    TextSpan(text: "game", style: accentUnderlineTextStyle),
                    TextSpan(text: " developer learning the ropes and making ", style: neutralTextStyle),
                    TextSpan(
                        text: "knots",
                        style: primaryUnderlineTextStyle,
                        ),
                    TextSpan(text: " on the way", style: neutralTextStyle),
                  ]
                )
              ),
            ),
          ],
        )
    );
  }
}
