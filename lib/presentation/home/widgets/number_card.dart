import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    super.key,
    required this.index,
  });

final int index;

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 220,
              width:50,
            ),
            Container(
                height:220,
                width: 160,
                decoration:  BoxDecoration(
                  borderRadius: borderRadius,
                  color: Colors.amber,
                 image: const DecorationImage( 
                  fit: BoxFit.cover,
                image: NetworkImage('https://www.themoviedb.org/t/p/w220_and_h330_face/y2d2SBqK33mGOG2CqAYMo3YbWE4.jpg'),
                 ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 30,
            bottom: 10,
            child: BorderedText(
              strokeColor: whiteColor,
              child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    color: colorBlack,
                    fontSize: 100,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      );
    }
  }