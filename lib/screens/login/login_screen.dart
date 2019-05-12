import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_login_animation/screens/login/widgets/form_container.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/background1.jpg'), fit: BoxFit.cover),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 70.0,
                      bottom: 32.0,
                    ),
                    child: Image.asset('images/tick_icon_blue.png',
                        width: 150, height: 150, fit: BoxFit.contain),
                  ),
                  FormContainer(),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
