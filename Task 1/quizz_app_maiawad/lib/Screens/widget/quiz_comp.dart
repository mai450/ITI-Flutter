import 'package:flutter/material.dart';
import 'package:quizz_app_maiawad/Screens/score_screen.dart';

class QuizComponent extends StatelessWidget {
  final int i;
  QuizComponent(
      {
      //super.key
      required this.i});

  List quizName = ["Answer 1", "Answer 2", "Answer 3", "Answer 4"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 234, 234, 234),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ScoreScreen(),
                  ),
                );
              },
              child: Container(
                child: Text(
                  quizName[i],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
