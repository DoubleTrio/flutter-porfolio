import 'package:equatable/equatable.dart';
import 'package:flutter_porfolio/models/models.dart';

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

// TODO change to enum
class DrawerScreen extends DrawerState {
  final ScreenName screenName;

  const DrawerScreen(this.screenName);

  @override
  List<Object> get props => [screenName];
}