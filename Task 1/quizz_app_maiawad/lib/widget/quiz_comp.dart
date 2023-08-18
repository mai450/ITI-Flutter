import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app_maiawad/Screens/score_screen.dart';

class QuizComponent extends StatelessWidget {
  final int i;
  QuizComponent(
      {
      //super.key
      required this.i});

  List quizName = ["10", "21", "11", "9"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ScoreScreen(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 234, 234, 234),
                border: Border.all(
                    color: Color.fromARGB(197, 191, 158, 250), width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  quizName[i],
                  style: GoogleFonts.abel(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
