import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

// const imageUrl = 'https://www.themoviedb.org/t/p/w220_and_h330_face/y2d2SBqK33mGOG2CqAYMo3YbWE4.jpg';
class ViewSearchedMatches extends StatefulWidget {
  const ViewSearchedMatches({
    required this.passList,
    super.key
    });
  final List passList;

  @override
  State<ViewSearchedMatches> createState() => _ViewSearchedMatchesState();
}

class _ViewSearchedMatchesState extends State<ViewSearchedMatches> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSearchPage(title: 'Movies & TV'),
        height,
        Expanded(
          child:widget.passList.isEmpty ?
            const Center(child: CircularProgressIndicator(),)
           : GridView.count(
            mainAxisSpacing: 8,
            crossAxisSpacing: 5,
            childAspectRatio: 1/1.4,
            crossAxisCount: 3,
            children: List.generate(widget.passList.length, (index)=>  MainCard(imageUrl: kBaseUrl+widget.passList[index].posterPath,))
          )
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({
    required this.imageUrl,
    super.key
    });
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        image:  DecorationImage(
          fit: BoxFit.cover,
          image:NetworkImage(imageUrl) ,
        ),
        borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}
