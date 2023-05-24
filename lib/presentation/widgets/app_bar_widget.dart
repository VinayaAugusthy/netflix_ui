import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatefulWidget {
   const AppBarWidget({super.key,required this.title});

  final String title;

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  String get title => '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10
      ),
      child: Row(
        children: [
          width,
          Text(
          widget.title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
         const Spacer(),
         IconButton(
          onPressed: (){}, 
          icon: const Icon(
            Icons.cast,
            color: Colors.white,
            size: 30,
            ),
            ),
           width,
          Container(
            width: 30,
            height: 30,
            color: Colors.blue,
          ),
          width,
        ],
      ),
    );
  }
}