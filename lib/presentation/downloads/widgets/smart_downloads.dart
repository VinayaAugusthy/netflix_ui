import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        bottom: 25
      ),
      child: Row(
        children: [
          Icon(
            Icons.settings,
            color: whiteColor,
            ),
            width,
          Text(
            'Smart Downloads',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
