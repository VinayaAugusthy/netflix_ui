import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/home/widgets/custom_button.dart';

import '../../core/constants.dart';

class ScreenNewAndHot extends StatefulWidget {
  const ScreenNewAndHot({super.key});

  @override
  State<ScreenNewAndHot> createState() => _ScreenNewAndHotState();
}

class _ScreenNewAndHotState extends State<ScreenNewAndHot> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
                ), 
               width,
              Container(
                width: 30,
                height: 20,
                color: Colors.blue,
              ),
              width,
              width
            ],
            bottom:   TabBar(
              isScrollable: true,
              unselectedLabelColor: whiteColor,
              labelColor: colorBlack,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              indicator: BoxDecoration(
                color: whiteColor,
                borderRadius: borderRadius30
              ),
              tabs: const [
              Tab(text: '🍿 Coming Soon'),
              Tab(text: '👀 Everyone\'s  watching',)
              ],
            ),
          ),
        ),
        body: TabBarView(
          children:[
            _buildComingSoon(context),
            _buildEveryoneWatching(),
          ] ),
      ),
    );
  }

Widget _buildComingSoon(BuildContext context){
  Size size = MediaQuery.of(context).size;
  return ListView(
    children: [
      height,
      Row(
        children: [
          const SizedBox(
            width: 50,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Feb',
                  style: TextStyle(
                    color: colorGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                Text(
                  '11',
                  style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: size.width-50,
                    height: 200,
                    child: 
                        Image.network(
                          'https://www.themoviedb.org/t/p/w250_and_h141_face/m3tdSyl11fhgXPDSEt3aBctTqGP.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      radius: 25,
                      child: IconButton(
                        onPressed: (){}, 
                        icon: const Icon(
                          Icons.volume_down_alt,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TALL GIRL 2',
                    style: TextStyle(
                      letterSpacing: -5,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  width70,
                  Row(
                    children: [
                     CustomButton(
                      icon: (Icons.notifications), 
                      title: 'Remind me',
                      iconSize: 16,
                      textSize: 12,
                      ),
                      width,
                      CustomButton(
                      icon: (Icons.info), 
                      title: 'Info',
                      iconSize: 16,
                      textSize: 12,
                      ),
                      width
                    ],
                  )
                ],
              ),
              const Text('Coming on Friday')
            ],
          ),
        ],
      ),
    ],
  );
}

Widget  _buildEveryoneWatching(){
  return const SizedBox();
}
}