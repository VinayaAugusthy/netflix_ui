import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/main_page/widgets/screen_main_page.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: backgroundColorApp),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white
          ),
          bodyMedium: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
