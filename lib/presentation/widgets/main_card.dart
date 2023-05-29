import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
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
         image: const DecorationImage( 
          fit: BoxFit.cover,
        image: NetworkImage('https://www.themoviedb.org/t/p/w220_and_h330_face/y2d2SBqK33mGOG2CqAYMo3YbWE4.jpg'),
         ),
        ),
      ),
    );
  }
}