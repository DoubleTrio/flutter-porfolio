import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';

class DrawerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: Icon(Icons.list_sharp,
            color: Theme.of(context).iconTheme.color,
            size: 35
          ),
          onPressed: () => BlocProvider.of<DrawerBloc>(context).add(DrawerOpened()),
        ),
      ]
    );
  }
}
