import 'package:flutter/material.dart';

class ScreenNewAndHot extends StatefulWidget {
  const ScreenNewAndHot({super.key});

  @override
  State<ScreenNewAndHot> createState() => _ScreenNewAndHotState();
}

class _ScreenNewAndHotState extends State<ScreenNewAndHot> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Text('New and hot'),
    );
  }
}