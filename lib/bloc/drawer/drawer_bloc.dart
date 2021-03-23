import 'dart:async';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'drawer.dart';
import 'package:flutter_porfolio/models/models.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(DrawerScreen(ScreenName.projectScreen));

  @override
  Stream<DrawerState> mapEventToState(
      DrawerEvent event,
      ) async* {
    print(event);
    if (event is DrawerOpened) {
      yield* _mapDrawerOpenedToState();
    }

    if (event is DrawerClosed) {
      yield* _mapDrawerClosedToState(event.screenName);
    }
  }

  Stream<DrawerState> _mapDrawerOpenedToState() async* {
    yield DrawerOpen();
  }

  Stream<DrawerState> _mapDrawerClosedToState(ScreenName screenName) async* {
    yield DrawerScreen(screenName);
  }
}
