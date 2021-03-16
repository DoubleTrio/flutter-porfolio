import 'package:equatable/equatable.dart';

abstract class DrawerEvent extends Equatable {
  const DrawerEvent();

  @override
  List<Object> get props => [];
}

class DrawerScreenSetted extends DrawerEvent {
  final int id;
  const DrawerScreenSetted(this.id);

  @override
  List<Object> get props => [id];
}

class DrawerOpened extends DrawerEvent {

}