import 'package:flutter/material.dart';
import 'package:quizz_app_maiawad/Screens/opening_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Congratulation, Mai',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Center(
              child: Text(
            'Your Score, 5:10',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey),
          )),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => OpeningScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: const StadiumBorder(),
                //elevation: 10,
                shadowColor: Colors.grey,
                minimumSize: Size(240, 70)),
            child: const Text(
              'Reset Quiz',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
