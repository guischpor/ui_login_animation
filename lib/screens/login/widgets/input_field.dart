import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  //const InputField({Key key}) : super(key: key);

  final IconData icon;
  final String hint;
  final bool obscure;

  InputField({this.icon, this.hint, this.obscure});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white24,
            width: 0.5,
          ),
        ),
      ),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
            contentPadding:
                EdgeInsets.only(top: 30, bottom: 30, right: 30, left: 5)),
      ),
    );
  }
}
