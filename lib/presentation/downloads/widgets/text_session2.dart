import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/downloads/widgets/image_session.dart';

class Session2 extends StatelessWidget {
  const Session2({required this.imageList, super.key});

  final List imageList;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImages());
    });
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: whiteColor, fontSize: 22, fontWeight: FontWeight.bold),
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
                margin: const EdgeInsets.only(left: 130, bottom: 50),
                imageList: imageList[0].posterPath!,
                size: Size(size.width * 0.4, size.width * 0.54),
                angle: 20,
              ),
              DownloadsImageWidget(
                margin: const EdgeInsets.only(right: 130, bottom: 50),
                size: Size(size.width * 0.4, size.width * 0.54),
                imageList: imageList[1].posterPath!,
                angle: -20,
              ),
              DownloadsImageWidget(
                margin: const EdgeInsets.only(top: 0),
                size: Size(size.width * 0.46, size.width * 0.62),
                imageList: imageList[2].posterPath!,
                radius: 8,
              ),
            ],
          ),
        )
      ],
    );
  }
}
