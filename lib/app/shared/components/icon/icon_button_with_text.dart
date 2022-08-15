import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/components/text/text.dart';

import 'icon.dart';

class IconButtonWithText extends StatelessWidget {
  const IconButtonWithText({
    Key? key,
    required this.icon,
    this.color = const Color(0xff3b5168),
    this.iconSize = 20,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final double iconSize;
  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: IconComponent(
            icon: icon,
            color: color,
            size: iconSize,
          ),
          onPressed: onPressed,
        ),
        const SizedBox(width: 2),
        Flexible(child: TextComponent(text: text, fontSize: 14))
      ],
    );
  }
}
