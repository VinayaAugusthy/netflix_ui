import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.icon,
    required this.title,
    super.key,
  });

final IconData icon;
final String title;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Icon(
          icon,
          color: whiteColor,
          size:28,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}