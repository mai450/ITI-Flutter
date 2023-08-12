import 'package:flutter/material.dart';
import 'package:quizz_app_maiawad/Screens/login_screen.dart';
import 'package:quizz_app_maiawad/Screens/opening_screen.dart';
//import 'package:quizz_app_maiawad/Screens/opening_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpeningScreen(),
    );
  }
}
