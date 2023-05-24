import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

const imageUrl = 'https://www.themoviedb.org/t/p/w220_and_h330_face/y2d2SBqK33mGOG2CqAYMo3YbWE4.jpg';
class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSearchPage(title: 'Movies & TV'),
        height,
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 8,
            crossAxisSpacing: 5,
            childAspectRatio: 1/1.4,
            crossAxisCount: 3,
            children: List.generate(20, (index)=> const MainCard())
          )
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.cover,
          image:NetworkImage(imageUrl) ,
        ),
        borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}
