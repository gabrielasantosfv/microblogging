import 'package:flutter/material.dart';

import 'decoration.dart';

class TextFieldWithPrefix extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;

  const TextFieldWithPrefix({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.obscureText,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: icon(prefixIcon),
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
