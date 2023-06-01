import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import '../../core/constants.dart';
import 'widgets/coming_soon.dart';
import 'widgets/everyone_watching.dart';

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
          preferredSize: const Size.fromHeight(80),
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
                // height: 30,
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
            _buildComingSoon(),
            _everyoneWatching(),
          ] ,
        ),
      ),
    );
  }

Widget _buildComingSoon(){
  return ListView.builder(
    itemCount: 10,
    itemBuilder: ( (context, index) => const ComingSoonWidget()),
  );
}
}

_everyoneWatching(){
   return ListView.builder(
    itemCount: 10,
    itemBuilder: ( (context, index) => const EveryoneWatching()),
  );
}




