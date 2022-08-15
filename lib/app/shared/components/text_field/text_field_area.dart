import 'package:flutter/material.dart';

import 'decoration.dart';

class TextFieldAreaComponent extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;

  const TextFieldAreaComponent({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      controller: controller,
      keyboardType: keyboardType,
      maxLines: 280,
      minLines: 15,
      decoration: InputDecoration(
        errorStyle: errorStyle,
        hintStyle: hintStyle,
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffffffff)),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffffffff)),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
        fillColor: const Color(0xffffffff),
      ),
    );
  }
}
