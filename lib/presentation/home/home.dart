import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';
import 'widgets/title_number_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              // print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              }else if(direction == ScrollDirection.forward){
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children:  const [
                   BackgroundCard(),
                    MainTitleAndCard(
                      title:'Released in the past year',
                    ),
                    MainTitleAndCard(title: 'Trending Now'),
                    NumberTitleCard(),
                    MainTitleAndCard(title: 'Tense Dramas'),
                    MainTitleAndCard(title: 'South Indian Cinemas')
                  ],
                ),
                scrollNotifier.value == true ? Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIwCSCDi_eg3qa8yrtzuZbj1LoFykC8Ik1qA&usqp=CAU',
                             width: 50,
                             height: 100,
                          )
                        ],
                      ),
                    ],
                  ),
                ) : height,
              ],
            ),
          );
         }
        ),
      ),
    );
  } 
}







