import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/components/text/text.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final Color color;
  final Function()? onPressed;
  final bool inProgress;
  final Color textColor;

  const ButtonComponent({
    Key? key,
    required this.text,
    required this.inProgress,
    this.onPressed,
    this.color = const Color(0xff3b5168),
    this.textColor = const Color(0xffffffff),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
          (Set<MaterialState> states) {
            return const EdgeInsets.symmetric(vertical: 10, horizontal: 25);
          },
        ),
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
      ),
      child: !inProgress
          ? TextComponent(
              text: text,
              fontWeight: FontWeight.bold,
              fontSize: 17,
              textAlign: TextAlign.center,
              color: textColor,
            )
          : SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                backgroundColor: color,
                color: const Color(0xffffffff),
              ),
            ),
    );
  }
}
