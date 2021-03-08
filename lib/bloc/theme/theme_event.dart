import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';


abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeChanged extends ThemeEvent {}