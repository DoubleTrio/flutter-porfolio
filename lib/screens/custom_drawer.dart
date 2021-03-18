import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';
import 'package:flutter_porfolio/components/components.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final double iconSize = 28;
    final List<DrawerTileEntity> navHeaders = [
      DrawerTileEntity(
        header: "My Projects",
        onTap: () => BlocProvider.of<DrawerBloc>(context).add(DrawerScreenSetted(0)),
        leading: Icon(Icons.article_outlined, size: iconSize),
      ),
      DrawerTileEntity(
        header: "About Myself",
        onTap: () => BlocProvider.of<DrawerBloc>(context).add(DrawerScreenSetted(1)),
        leading: Icon(Icons.person_outline, size: iconSize),
      ),
      DrawerTileEntity(
        header: "Blog",
        onTap: () => BlocProvider.of<DrawerBloc>(context).add(DrawerScreenSetted(2)),
        leading: Icon(Icons.wysiwyg_rounded, size: iconSize),
      ),
      DrawerTileEntity(
        header: "Media",
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
        padding: EdgeInsets.all(12),
        child: ListView.builder(
            itemCount: navHeaders.length,
            itemBuilder: (context, index) {
              final navHeader = navHeaders[index];
              return Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: navHeader.onTap,
                    splashColor: theme.scaffoldBackgroundColor,
                    highlightColor: theme.primaryColor.withOpacity(0.3),
                    child: Ink(
                      width: double.infinity,
                      child: ListTile(
                        visualDensity: VisualDensity(horizontal: 3, vertical: -3),
                        leading: navHeader.leading,
                        title: Padding(padding: EdgeInsets.only(
                          left: index == navHeaders.length - 1 ? 0 : 17), child: Text(navHeader.header, style: theme.textTheme.headline6))),
                    )
                ),
              );
            }
        )
      );
  }
}

class DrawerTileEntity {
  final String header;
  final VoidCallback onTap;
  final Widget leading;
  const DrawerTileEntity({required this.header, required this.onTap, required this.leading });
}
