import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.icon,
    required this.title,
    this.iconSize =28,
    this.textSize = 20,
    super.key,
  });

final IconData icon;
final String title;
final double iconSize;
final double textSize;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Icon(
          icon,
          color: whiteColor,
          size:iconSize,
        ),
        Text(
          title,
          style:  TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}