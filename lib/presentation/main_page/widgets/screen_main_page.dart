import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/home/home.dart';
import 'package:netflix/presentation/main_page/bottom_nav.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final pages = [
    const Home(),
    const ScreenNewAndHot(),
    const ScreenSearch(),
    // const ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      body: ValueListenableBuilder(
        valueListenable: indexNotifier, 
        builder: (context, value, child) {
          return pages[value];
        },
        ),
    );
  }
}