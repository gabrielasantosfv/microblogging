import 'package:flutter/material.dart';

import 'decoration.dart';

class TextFieldWithSuffix extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final void Function()? onTapSuffixIcon;

  const TextFieldWithSuffix({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.suffixIcon,
    required this.obscureText,
    this.keyboardType = TextInputType.text,
    this.onTapSuffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: onTapSuffixIcon,
          child: icon(suffixIcon),
        ),
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
