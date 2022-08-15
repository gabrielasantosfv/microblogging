import 'package:flutter/material.dart';

import 'icon.dart';

class IconButtonComponent extends StatelessWidget {
  const IconButtonComponent({
    Key? key,
    required this.icon,
    this.color = const Color(0xff3b5168),
    this.iconSize = 20,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final double iconSize;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: IconComponent(
        icon: icon,
        color: color,
        size: iconSize,
      ),
      onPressed: onPressed,
    );
  }
}
