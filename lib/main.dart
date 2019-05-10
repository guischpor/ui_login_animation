import 'package:flutter/material.dart';
import 'package:ui_login_animation/screens/home_screen.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Login Animation',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
