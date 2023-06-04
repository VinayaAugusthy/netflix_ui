import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../widgets/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    required this.passList,
    super.key,
  });
  final List passList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: 'Top 10 TV Shows in India'),
        height,
        LimitedBox(
          maxHeight: 240,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) =>  NumberCard(index: index,posterPath: passList[index].posterPath,)),
          ),
        ) 
      ],
    );
  }
}