import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app_maiawad/Screens/quiz_screen.dart';
import 'package:quizz_app_maiawad/widget/category_container.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 227, 174),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'All Categories',
            style: GoogleFonts.mate(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        actions: [const Image(image: AssetImage('asset/logo2.png'))],
      ),
      body: Column(
        children: [
          const Image(
            image: AssetImage('asset/logo2.png'),
            height: 250,
            width: 250,
          ),
          // SizedBox(
          //   height: 30,
          // ),
          for (int i = 0; i < 3; i++)
            CategoryContainer(
              index: i,
            )
        ],
      ),
    );
  }
}
