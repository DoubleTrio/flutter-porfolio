import 'dart:async';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'drawer.dart';
import 'package:flutter_porfolio/models/models.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(DrawerScreenSet(ScreenName.projectScreen));

  @override
  Stream<DrawerState> mapEventToState(
      DrawerEvent event,
      ) async* {
    print(event);
    if (event is DrawerOpened) {
      yield* _mapDrawerOpenedToState();
    }

    if (event is DrawerScreenSetted) {
      yield* _mapDrawerScreenSettedToState(event.screenName);
    }
  }

  Stream<DrawerState> _mapDrawerOpenedToState() async* {
    yield DrawerOpen();
  }

  Stream<DrawerState> _mapDrawerScreenSettedToState(ScreenName screenName) async* {
    yield DrawerScreenSet(screenName);
  }
}
