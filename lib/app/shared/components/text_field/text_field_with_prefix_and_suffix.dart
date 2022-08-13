import 'package:flutter/material.dart';

import 'decoration.dart';

class TextFieldWithPrefixAndSuffix extends StatelessWidget {
  final TextEditingController controller;
  //final String? Function(String?)? validator;
  final String hintText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final void Function()? onTapSuffixIcon;

  const TextFieldWithPrefixAndSuffix({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.obscureText,
    //required this.validator,
    this.keyboardType = TextInputType.text,
    this.onTapSuffixIcon,
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
        prefixIcon: icon(prefixIcon),
        suffixIcon: GestureDetector(
          onTap: onTapSuffixIcon,
          child: icon(suffixIcon),
        ),
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        filled: true,
        fillColor: const Color(0xfff2f2f2),
      ),
      obscureText: obscureText,
    );
  }
}
