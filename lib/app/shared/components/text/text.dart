import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final String fontFamily;
  final TextDecoration decoration;

  const TextComponent({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.color = const Color(0xff3b5168),
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    this.fontFamily = 'Lato',
    this.decoration = TextDecoration.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: fontFamily,
        decoration: decoration,
      ),
      textAlign: textAlign,
    );
  }
}
