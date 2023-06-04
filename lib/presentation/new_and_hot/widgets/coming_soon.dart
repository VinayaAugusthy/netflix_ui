import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button.dart';
import '../../widgets/video_widget.dart';

class ComingSoonWidget extends StatefulWidget {
   ComingSoonWidget({
    required this.index,
    required this.passList,
    super.key,
  });
List passList;
int index;

  @override
  State<ComingSoonWidget> createState() => _ComingSoonWidgetState();
}

class _ComingSoonWidgetState extends State<ComingSoonWidget> {


  @override
  Widget build(BuildContext context) {
    String dateFormat = DateFormat.d().format(DateTime.parse(widget.passList[widget.index].releaseDate));
    String monthFormat = DateFormat.MMM().format(DateTime.parse(widget.passList[widget.index].releaseDate));
    Size size = MediaQuery.of(context).size;
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height,
         SizedBox(
          width:50 ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
              monthFormat,
                style: const TextStyle(
                  color: colorGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                ),
               Text(
                dateFormat,
                style: const TextStyle(
                  letterSpacing: 4,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width-50,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               VideoWidget(passList:widget.passList,index: widget.index,),
              height,
               Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      widget.passList[widget.index].title,
                      style: const TextStyle(
                         letterSpacing: -1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  width70,
                  const Row(
                    children: [
                     CustomButton(
                      icon: (Icons.notifications_none), 
                      title: 'Remind me',
                      iconSize: 20,
                      textSize: 12,
                      ),
                      width,
                      CustomButton(
                      icon: (Icons.info), 
                      title: 'Info',
                      iconSize: 20,
                      textSize: 12,
                      ),
                      width
                    ],
                  )
                ],
              ),
              height,
              // const Text('Coming on Friday'),
              height,
                Text(
                widget.passList[widget.index].originalTitle,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              height,
               Text(
               widget.passList[widget.index].overview,
                style: const TextStyle(
                  color: colorGrey
                ),
              ),
              height,
            ],
          ),
        ),
      ],
    );
  }
}

