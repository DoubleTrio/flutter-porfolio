import 'dart:async';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'drawer.dart';


class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(DrawerScreenSet(0));

  @override
  Stream<DrawerState> mapEventToState(
      DrawerEvent event,
      ) async* {
    print(event);
    if (event is DrawerOpened) {
      yield* _mapDrawerOpenedToState();
    }

    if (event is DrawerScreenSetted) {
      yield* _mapDrawerScreenSettedToState(event.id);
    }
  }

  Stream<DrawerState> _mapDrawerOpenedToState() async* {
    yield DrawerOpen();
  }

  Stream<DrawerState> _mapDrawerScreenSettedToState(int id) async* {
    yield DrawerScreenSet(id);
  }
}
