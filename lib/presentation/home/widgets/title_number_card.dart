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
            children: List.generate(
                10,
                (index){
                   if (passList[index] != null && passList[index].posterPath != null) {
                  return NumberCard(
                    index: index,
                    posterPath: passList[index].posterPath!,
                  );
                } else {
                  // Handle the case where passList[index] or its posterPath is null
                  return Container(); // You can return an empty container or a placeholder widget
                }
                }),
          ),
        )
      ],
    );
  }
}
