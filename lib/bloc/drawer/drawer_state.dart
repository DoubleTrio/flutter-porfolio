import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';

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
