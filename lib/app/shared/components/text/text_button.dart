import 'package:flutter/material.dart';

import 'text.dart';

class TextButtonComponent extends StatelessWidget {
  const TextButtonComponent({
    Key? key,
    required this.text,
    this.color = const Color(0xff3b5168),
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    this.fontFamily = 'Lato',
    this.fontSize = 16,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final String fontFamily;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: TextComponent(
        text: text,
        decoration: TextDecoration.underline,
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
      ),
    );
  }
}
