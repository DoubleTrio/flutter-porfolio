import 'package:flutter/material.dart';

class DrawerTileEntity {
  final String header;
  final VoidCallback onTap;
  final Widget leading;
  const DrawerTileEntity({required this.header, required this.onTap, required this.leading });
}