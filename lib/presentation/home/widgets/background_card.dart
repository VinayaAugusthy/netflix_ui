import 'package:flutter/material.dart';
import 'package:netflix/core/strings.dart';
import '../../../core/colors/colors.dart';
import 'custom_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    required this.posterPath,
    super.key
    });

final String posterPath;
  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration:  BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  kBaseUrl+posterPath
                ),
              )
            ),
          ),
            Positioned(
            bottom: 10,
            left: 0,
            right: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CustomButton(icon: Icons.add, title: 'My List'),
                  _playButton(),
                  const CustomButton(icon: Icons.info, title: 'Info')
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(whiteColor)
    ),
    onPressed: (){}, 
    icon: const Icon(
      Icons.play_arrow,
      size: 30,
      color: colorBlack,
    ), 
    label: const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10
      ),
      child: Text(
        'Play',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: colorBlack
          ),
        ),
      ),
    );
  }
}