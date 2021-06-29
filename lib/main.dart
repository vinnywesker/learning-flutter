import 'package:first_app/routes/routes.dart';
import 'package:first_app/store/name.dart';
import 'package:first_app/styles/custom_theme.dart';
import 'package:first_app/views/login/login.dart';
import 'package:first_app/views/main/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyName(),
      child: MaterialApp(
        routes: {AppRoutes().mainScreen: (ctx) => MainScreen()},
        home: LoginScreen(),
        theme: ThemeData(
          primarySwatch: CustomTheme().primaryColor,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: CustomTheme().primaryColor,
        ),
      ),
    );
  }
}
