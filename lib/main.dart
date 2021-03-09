import 'package:flutter/material.dart';
import 'package:flutter_porfolio/screens/screens.dart';
import 'package:flutter_porfolio/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_porfolio/bloc/blocs.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );

  runApp(BlocProvider<ThemeBloc>(create: (_) => ThemeBloc(), child: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Porfolio',
          themeMode: state.themeMode,
          theme: lightTheme,
          darkTheme: darkTheme,
          home: Scaffold(
            body: HomeScreen(),
          ),
        );
      }
    );
  }
}
