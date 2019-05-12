import 'package:flutter/material.dart';
import 'package:ui_login_animation/screens/login/login_screen.dart';
import 'package:ui_login_animation/screens/modelscreen/logo_app.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Login Animation',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
