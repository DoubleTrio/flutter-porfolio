import 'package:flutter/cupertino.dart';
import 'package:flutter_porfolio/components/animated_screen.dart';
import 'package:flutter_porfolio/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_porfolio/screens/custom_drawer.dart';
import 'package:flutter_porfolio/screens/drawer_item.dart';
import 'package:flutter_porfolio/models/models.dart';
import 'package:flutter_porfolio/screens/screen_stack.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  setUp(() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory(),
    );
  });

  group("MainApp", () {
    testWidgets("renders MaterialApp", (WidgetTester tester) async {
      await tester.pumpWidget(MainApp());
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}