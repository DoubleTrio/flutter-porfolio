// import 'package:flutter/material.dart';
// import 'package:flutter_porfolio/screens/home/components/components.dart';
// import 'dart:math';
//
// class ScreenAnimationEntity {
//   final Widget child;
//   final int id;
//   final double animationScreenRotation;
//   final Key? key;
//   final double xOffset;
//   final double yOffset;
//
//   ScreenAnimationEntity({
//     required this.child,
//     required this.id,
//     required this.animationScreenRotation,
//     this.key,
//     this.xOffset = 0,
//     this.yOffset = 0
//   });
// }
//
// List<ScreenAnimationEntity> screenAnimations = [
//   ScreenAnimationEntity(
//     id: 0,
//     key: Key("0"),
//     animationScreenRotation: -pi / 4,
//     xOffset: 0,
//     yOffset: 0,
//     child: Scaffold(
//       floatingActionButton: ThemeActionButton(),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               DrawerBar(),
//               CircleAvatar(
//                   backgroundImage: AssetImage("assets/images/building.jpg"),
//                   radius: 70
//               ),
//               NameHeader(),
//               ProfileDescription(),
//               ProjectBody()
//             ],
//           ),
//         ),
//       ),
//     ),
//   ),
//
//   ScreenAnimationEntity(
//     id: 1,
//     key: Key("1"),
//     child: Scaffold(
//       floatingActionButton: ThemeActionButton(),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               DrawerBar(),
//               CircleAvatar(
//                 backgroundImage: AssetImage("assets/images/building.jpg"),
//                 radius: 70
//               ),
//               NameHeader(),
//               // ProfileDescription(),
//               // ProjectBody()
//             ],
//           ),
//         ),
//       ),
//     ),
//     animationScreenRotation: -pi / 2.5,
//     xOffset: -200,
//     yOffset: -150,
//   ),
//
//   ScreenAnimationEntity(
//     id: 2,
//     key: Key("2"),
//     child: Scaffold(
//       floatingActionButton: ThemeActionButton(),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               DrawerBar(on),
//               CircleAvatar(
//                   backgroundImage: AssetImage("assets/images/building.jpg"),
//                   radius: 70
//               ),
//               NameHeader(),
//               // ProfileDescription(),
//               // ProjectBody()
//             ],
//           ),
//         ),
//       ),
//     ),
//     animationScreenRotation: -pi / 1.7,
//     xOffset: -200,
//     yOffset: -350,
//   )
// ];