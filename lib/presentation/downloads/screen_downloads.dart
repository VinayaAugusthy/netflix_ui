import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatefulWidget {
  const ScreenDownloads({super.key});

  @override
  State<ScreenDownloads> createState() => _ScreenDownloadsState();
}

class _ScreenDownloadsState extends State<ScreenDownloads> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: AppBarWidget(title: 'Downloads',)),
        body:ListView(
          children:   [
            const _smartDownloads(),
            Session2(),
            const Session3(),
          ],
        )
      ),
    );
  }
}

class _smartDownloads extends StatelessWidget {
  const _smartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        bottom: 25
      ),
      child: Row(
        children: [
          Icon(
            Icons.settings,
            color: whiteColor,
            ),
            width,
          Text(
            'Smart Downloads',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}

class Session2 extends StatelessWidget {
   Session2({super.key});

    final imageList = [];

  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return Column(
      children: [
    const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: whiteColor,
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
          ),
          height,
        const Text(
          'We will download personalised selection of\nmovies and shows for you, so there\'s\nalways something to watch on your\ndevice',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            ),
          ),
        SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.45,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: size.width * 0.47,
                   backgroundColor: Colors.grey.withOpacity(0.5),
                ),
              ),
              DownloadsImageWidget(
                margin:const EdgeInsets.only(left: 130,bottom: 50), 
                imageList: imageList[0],
                size: Size(size.width * 0.4, size.width * 0.54),
                angle: 20,
                ),
                DownloadsImageWidget(
                margin:const EdgeInsets.only(right: 130,bottom: 50),
                size: Size(size.width * 0.4, size.width * 0.54), 
                imageList: imageList[1],
                angle: -20,
                ),
                DownloadsImageWidget(
                margin:const EdgeInsets.only(top: 0),
                size: Size(size.width * 0.46, size.width * 0.62), 
                imageList: imageList[2],
                radius: 8,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Session3 extends StatelessWidget {
  const Session3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: 10
            ),
            child: MaterialButton(
                  color: buttonColorBlue,
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'Set up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
              MaterialButton(
              color: whiteColor,
              onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                'See what you can download',
                style: TextStyle(
                color: colorBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.margin,
    required this.imageList,
    required this.size,
    this.angle = 0,
    this.radius=10,
  });

  final EdgeInsets margin;
  final double angle;
  final String imageList;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: colorBlack,
            image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageList))
          ),
        ),
      ),
    );
  }
}