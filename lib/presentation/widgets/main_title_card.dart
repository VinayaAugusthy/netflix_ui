
import 'package:flutter/material.dart';
import '../../core/constants.dart';
import 'main_card.dart';
import 'main_title.dart';

class MainTitleAndCard extends StatelessWidget {
  const MainTitleAndCard({
    required this.title,
    required this.passList,
    super.key,
  });

final String title;
final List passList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         MainTitle(title: title),
        height,
        LimitedBox(
          maxHeight: 240,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(passList.length, (index) => MainCard(posterPath: passList[index].posterPath,))
          ),
        ) 
      ],
    );
  }
}