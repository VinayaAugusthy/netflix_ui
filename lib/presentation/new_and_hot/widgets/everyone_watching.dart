
import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button.dart';
import '../../widgets/video_widget.dart';
 
class EveryoneWatching extends StatefulWidget {
   const EveryoneWatching({
    required this.index,
    required this.passList,
    super.key,
  });

final int index;
final List passList;
  @override
  State<EveryoneWatching> createState() => _EveryoneWatchingState();
}

class _EveryoneWatchingState extends State<EveryoneWatching> {

  @override
  Widget build(BuildContext context) {
  return   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
      height,
        Text(
      widget.passList[widget.index].title,
      
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
    ),
    height,
     Text(
      widget.passList[widget.index].overview,
      style: TextStyle(
        color: colorGrey
      ),
    ),
    height50,
    VideoWidget(passList: widget.passList,index: widget.index,),
    height,
    const Row(
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