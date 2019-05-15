import 'package:flutter/material.dart';
import 'package:ui_login_animation/screens/login/widgets/input_field.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              hint: 'Username',
              icon: Icons.person,
              obscure: false,
            ),
            InputField(
              hint: 'Password',
              icon: Icons.lock,
              obscure: true,
            ),
          ],
        ),
      ),
    );
  }
}
