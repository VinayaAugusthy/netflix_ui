
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/http/top_tvshows.dart';
import 'package:netflix/domain/http/trending.dart';
import 'package:netflix/domain/http/upcoming.dart';
import 'package:netflix/domain/model/top_tvshows_model.dart';
import 'package:netflix/domain/model/trending_model.dart';
import 'package:netflix/domain/model/upcoming.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';
import 'widgets/title_number_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
    getTrending();
    getTvShows();
    getUpcoming();
  }

  List<TrendingList> trending=[];
  List<Results> tvShows = [];
  List<ResultsUpcoming> upcoming = [];

getTrending() async{
trending = await TrendingHome.getTrendingMovies();
setState(() {});
}

getTvShows() async{
  tvShows = await TopTvShowsHome.getTopShows();
  setState(() {});
}

getUpcoming() async{
  upcoming = await UpcomingHome.getUpcomings();
  setState(() {});
}
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
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {  
                      return trending.isEmpty ? Center(child: const CircularProgressIndicator()) :
                      Column(
                      children:   [
                        BackgroundCard(posterPath: trending[index].posterPath??"may be null",),
                        MainTitleAndCard(title: 'Trending Now',passList: trending),
                         NumberTitleCard(passList: tvShows,),
                         MainTitleAndCard(title: 'Upcoming Movies',passList: upcoming),
                      ],
                    );
                    },
                  ),
                  scrollNotifier.value == true ? 
                  AnimatedContainer(
                    duration: const Duration(
                      milliseconds: 1000
                    ),
                    width: double.infinity,
                    height: 100,
                    color: Colors.black.withOpacity(0.3),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIwCSCDi_eg3qa8yrtzuZbj1LoFykC8Ik1qA&usqp=CAU',
                               width: 60,
                               height: 60,
                            ),
                            const Spacer(),
                             const Icon(
                            Icons.cast,
                            color: Colors.white,
                            size: 30,
                            ), 
                          width,
                          Container(
                            width: 30,
                            height: 30,
                            color: Colors.blue,
                          ),
                          width,
                          ],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'TV Shows',
                              style: ktextHome
                            ),
                            Text(
                              'Movies',
                               style: ktextHome
                            ),
                            Text(
                              'Categories',
                               style: ktextHome
                            ),
                          ],
                        )
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







