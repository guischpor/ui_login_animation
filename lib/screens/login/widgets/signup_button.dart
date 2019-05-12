import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(top: 160),
      onPressed: () {},
      child: Text(
        'Não possui uma conta? Cadastra-se!',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 12,
            color: Colors.white,
            letterSpacing: 0.5),
      ),
    );
  }
}
