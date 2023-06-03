import 'package:flutter/material.dart';
import 'package:netflix/core/strings.dart';
import '../../core/constants.dart';

class MainCard extends StatelessWidget {
  final String posterPath;
   const MainCard({
    required this.posterPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
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
    );
  }
}