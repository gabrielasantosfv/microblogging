import 'package:flutter/material.dart';

InputBorder inputBorder = OutlineInputBorder(
  borderSide: const BorderSide(color: Color(0xfff2f2f2)),
  borderRadius: BorderRadius.circular(15),
);
TextStyle errorStyle = const TextStyle(color: Colors.red);
TextStyle hintStyle = const TextStyle(color: Color(0xff858585));
TextStyle style = const TextStyle(color: Color(0xff0a0808));
Icon icon (IconData icon) =>  Icon(icon, color: const Color(0xff858585));