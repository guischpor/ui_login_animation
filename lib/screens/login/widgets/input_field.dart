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
        border: Border(),
      ),
      child: TextFormField(),
    );
  }
}
