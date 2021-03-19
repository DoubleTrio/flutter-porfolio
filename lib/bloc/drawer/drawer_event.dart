import 'package:equatable/equatable.dart';
import 'package:flutter_porfolio/models/models.dart';


abstract class DrawerEvent extends Equatable {
  const DrawerEvent();

  @override
  List<Object> get props => [];
}

class DrawerScreenSetted extends DrawerEvent {
  final ScreenName screenName;
  const DrawerScreenSetted(this.screenName);

  @override
  List<Object> get props => [screenName];
}

class DrawerOpened extends DrawerEvent {

}