import 'package:flutter/material.dart';

import 'decoration.dart';

class TextField extends StatelessWidget {
  final TextEditingController controller;
  //final String? Function(String?)? validator;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;

  const TextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    //required this.validator,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      controller: controller,
      keyboardType: keyboardType,
      //validator: validator,
      decoration: InputDecoration(
        errorStyle: errorStyle,
        hintStyle: hintStyle,
        hintText: hintText,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        filled: true,
        fillColor: const Color(0xfff2f2f2),
      ),
      obscureText: obscureText,
    );
  }
}
