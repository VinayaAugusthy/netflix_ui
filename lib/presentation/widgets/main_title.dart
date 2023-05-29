import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({
    required this.title,
    super.key
    });

final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}