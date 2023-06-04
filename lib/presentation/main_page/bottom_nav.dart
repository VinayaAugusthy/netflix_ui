import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexNotifier,
      builder: (context, value, _) {
         return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColorApp,
        currentIndex: value,
        onTap: (index){
          indexNotifier.value = index;
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(
          color: Colors.white
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
           ),
             BottomNavigationBarItem(
            icon: Icon(Icons.collections),
            label: 'New & Hot',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.download_for_offline_sharp),
            label: 'Downloads',
          ),
        ],
      );
     },
    );
  }
}