import 'package:flutter/material.dart';

class IconComponent extends StatelessWidget {
  const IconComponent({
    Key? key,
    required this.icon,
    this.color = const Color(0xff3b5168),
    this.size = 20,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: color, size: size);
  }
}
