import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({
    required this.passList,
    super.key,
    });
final List passList;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSearchPage(title: 'Top Searches'),
        height,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx,index)=> TopSearchItemTile(
              backdropPath:kBaseUrl+passList[index].backdropPath,
              title: passList[index].title,
            ), 
            separatorBuilder: (ctx,index) => tileHeight, 
            itemCount: 8,
          ),
        ),
      ],
    );
  }
}


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({
     required this.backdropPath,
     required this.title,
    super.key,
    });
final String backdropPath;
final String title;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration:  BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image:NetworkImage(backdropPath) ,
            )
          ),
        ),
        width,
         Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          color: Colors.white,
          size: 35,
        )
      ],
    );
  }
}