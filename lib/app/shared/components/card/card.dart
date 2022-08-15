import 'package:flutter/material.dart';
import 'package:microblogging/app/shared/components/icon/icon.dart';
import 'package:microblogging/app/shared/components/icon/icon_button.dart';
import 'package:microblogging/app/shared/components/text/text.dart';

import '../icon/icon_button_with_text.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({
    Key? key,
    required this.image,
    required this.name,
    required this.date,
    required this.text,
    required this.numberLikes,
    required this.numberComments,
    required this.verified,
  }) : super(key: key);

  final String image, name, date, text;
  final int numberLikes, numberComments;
  final bool verified;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.blue[50],
                backgroundImage: NetworkImage(image),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: TextComponent(
                            text: name,
                            textAlign: TextAlign.left,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        verified
                            ? const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: IconComponent(icon: Icons.verified),
                              )
                            : Container()
                      ],
                    ),
                    const SizedBox(height: 3),
                    TextComponent(
                      text: date,
                      textAlign: TextAlign.left,
                      fontSize: 14,
                    ),
                    const SizedBox(height: 10),
                    TextComponent(
                      text: text,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                    actions(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget actions() {
    return Row(
      children: [
        Flexible(
          child: IconButtonWithText(
            icon: Icons.favorite_border,
            onPressed: () {},
            text: numberLikes.toString(),
          ),
        ),
        Flexible(
          child: IconButtonWithText(
            icon: Icons.mode_comment_outlined,
            onPressed: () {},
            text: numberComments.toString(),
          ),
        ),
        Flexible(
          child: IconButtonComponent(
            icon: Icons.share_outlined,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
