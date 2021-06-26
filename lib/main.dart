import 'package:first_app/styles/custom_theme.dart';
import 'package:first_app/views/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      theme: ThemeData(
        primarySwatch: CustomTheme().primaryColor,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: CustomTheme().primaryColor,
      ),
    );
  }
}
