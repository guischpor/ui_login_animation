import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_login_animation/screens/login/widgets/form_container.dart';
import 'package:ui_login_animation/screens/login/widgets/signup_button.dart';
import 'package:ui_login_animation/screens/login/widgets/stagger_animation.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/background2.jpg'), fit: BoxFit.cover),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 70.0,
                      bottom: 32.0,
                    ),
                    child: Image.asset('images/tick_icon_purple.png',
                        width: 150, height: 150, fit: BoxFit.contain),
                  ),
                  FormContainer(),
                  SignUpButton()
                ],
              ),
              StaggerAnimation(controller: _animationController.view)
            ],
          ),
        ],
      ),
    ));
  }
}
