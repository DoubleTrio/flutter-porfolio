import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';
import 'package:flutter_porfolio/components/components.dart';
import 'package:flutter_porfolio/models/models.dart';
import 'drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    final double iconSize = 28;

    final List<DrawerTileEntity> navHeaders = [
      DrawerTileEntity(
        header: "About Me",
        onTap: () => BlocProvider.of<DrawerBloc>(context).add(DrawerClosed(ScreenName.aboutScreen)),
        leading: Icon(Icons.person_outline, size: iconSize),
      ),
      DrawerTileEntity(
        header: "My Projects",
        onTap: () => BlocProvider.of<DrawerBloc>(context).add(DrawerClosed(ScreenName.projectScreen)),
        leading: Icon(Icons.article_outlined, size: iconSize),
      ),
      DrawerTileEntity(
        header: "Blog",
        onTap: () => BlocProvider.of<DrawerBloc>(context).add(DrawerClosed(ScreenName.blogScreen)),
        leading: Icon(Icons.wysiwyg_rounded, size: iconSize),
      ),

      // TODO - Open a pop-up for users to send a message
      DrawerTileEntity(
        header: "Message Me",
        onTap: () => {},
        leading: Icon(Icons.people_alt_outlined, size: iconSize)
      ),
      DrawerTileEntity(
        header: "Dark Theme",
        onTap: () => BlocProvider.of<ThemeBloc>(context).add(ThemeChanged()),
        leading: ThemeSwitch(),
      ),
    ];

    return Container(
      color: theme.bottomAppBarColor,
      width: double.infinity,
      child: ListView.builder(
        itemCount: navHeaders.length,
        itemBuilder: (context, index) {
          final navHeader = navHeaders[index];
          return DrawerItem(key: Key("drawerItem${index}"), leading: navHeader.leading, header: navHeader.header, onTap: navHeader.onTap);
        }
      )
    );
  }
}
