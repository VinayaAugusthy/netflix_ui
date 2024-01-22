import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/strings.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.margin,
    required this.imageList,
    required this.size,
    this.angle = 0,
    this.radius=10,
  });

  final EdgeInsets margin;
  final double angle;
  final String imageList;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: colorBlack,
            image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(kBaseUrl+imageList))
          ),
        ),
      ),
    );
  }
}