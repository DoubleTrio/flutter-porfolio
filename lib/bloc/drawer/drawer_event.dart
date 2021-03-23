import 'package:equatable/equatable.dart';
import 'package:flutter_porfolio/models/models.dart';


abstract class DrawerEvent extends Equatable {
  const DrawerEvent();

  @override
  List<Object> get props => [];
}

class DrawerClosed extends DrawerEvent {
  final ScreenName screenName;
  const DrawerClosed(this.screenName);

  @override
  List<Object> get props => [screenName];
}

class DrawerOpened extends DrawerEvent {

}