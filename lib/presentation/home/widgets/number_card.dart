import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/strings.dart';
import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    super.key,
    required this.posterPath,
    required this.index,
  });

final int index;
final String posterPath;

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
                 image:  DecorationImage( 
                  fit: BoxFit.cover,
                image: NetworkImage(kBaseUrl+posterPath),
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