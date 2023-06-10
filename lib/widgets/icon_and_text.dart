import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData? icon;
  final String text;

  final Color colorIcon;

  IconAndTextWidget(
      {super.key,
      required this.icon,
      required this.colorIcon,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: colorIcon,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
        )
      ],
    );
  }
}
