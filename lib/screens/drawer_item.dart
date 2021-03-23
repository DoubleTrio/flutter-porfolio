import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final Widget leading;
  final String header;
  final VoidCallback onTap;

  const DrawerItem({required Key key, required this.leading, required this.header, required this.onTap });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: onTap,
          splashColor: theme.scaffoldBackgroundColor,
          highlightColor: theme.primaryColor.withOpacity(0.3),
          child: Ink(
            width: double.infinity,
            child: ListTile(
              visualDensity: VisualDensity(horizontal: 3, vertical: -3),
              leading: leading,
              title: Padding(
                padding: EdgeInsets.only(
                  left: 17
                ),
              child: Text(header, style: theme.textTheme.headline6)
              )
            ),
          )
      ),
    );
  }
}
