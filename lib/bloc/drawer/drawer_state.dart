import 'package:equatable/equatable.dart';

class DrawerState extends Equatable {

  const DrawerState();

  @override
  List<Object> get props => [];
}

class DrawerOpen extends DrawerState {
  const DrawerOpen();

  @override
  List<Object> get props => [];
}

class DrawerScreenSet extends DrawerState {
  final int id;

  const DrawerScreenSet(this.id);

  @override
  List<Object> get props => [id];
}
