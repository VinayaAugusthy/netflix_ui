import 'package:flutter/material.dart';

class ScreenDownloads extends StatefulWidget {
  const ScreenDownloads({super.key});

  @override
  State<ScreenDownloads> createState() => _ScreenDownloadsState();
}

class _ScreenDownloadsState extends State<ScreenDownloads> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Text('Downloads'),
    );
  }
}