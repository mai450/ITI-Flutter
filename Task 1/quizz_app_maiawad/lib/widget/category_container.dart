// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app_maiawad/Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    //super.key
    required this.index,
  });

  List quizName = ["Sport Test", "Math Test", "Chemistry Test"];
  List quizColor = [Colors.deepPurple, Colors.red, Colors.blue];
  List quizlogo = [
    'asset/sport2.png',
    'asset/math3.png',
    'asset/chemistry2.png'
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const QuizScreen(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        height: 60,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 239, 239, 239),
            //border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(quizlogo[index]),
                  height: 60,
                ),
                const SizedBox(
                  width: 5,
                ),
                const VerticalDivider(
                  thickness: 1,
                  color: Color.fromARGB(255, 103, 132, 104),
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(quizName[index],
                    style: GoogleFonts.macondo(
                        fontSize: 20,
                        color: quizColor[index],
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
