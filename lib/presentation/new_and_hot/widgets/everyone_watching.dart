import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button.dart';
import '../../widgets/video_widget.dart';

class EveryoneWatching extends StatelessWidget {
  const EveryoneWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  return  const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
      height,
       Text(
      'Friends',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
    ),
    height,
    Text(
      "Landing the lead in the school musical is a dream come true for jodi, until the pressure sesnds her confidence-and her relationship-into a tailspin",
      style: TextStyle(
        color: colorGrey
      ),
    ),
    height50,
    VideoWidget(),
    height,
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(
        icon: (Icons.send), 
        title: 'Share',
        iconSize: 25,
        textSize: 16,
        ),
        width,
        CustomButton(
        icon: (Icons.add), 
        title: 'My List',
        iconSize: 25,
        textSize: 16,
        ),
        width,
         CustomButton(
        icon: (Icons.play_arrow), 
        title: 'Play',
        iconSize: 25,
        textSize: 16,
        ),
        width,
        width,
        height
      ],
    )
    ],
  );
}
}