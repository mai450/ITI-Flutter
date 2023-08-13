import 'package:flutter/material.dart';
import 'package:quizz_app_maiawad/Screens/widget/quiz_comp.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//---------------------------------  app bar  -------------------------------------------
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:
            //Center(child: Text('sports')),
            const Row(
          children: [
            Text('1:10'),
            SizedBox(
              width: 80,
            ),
            Text('Sport Test'),
          ],
        ),
        //leading: null,
        automaticallyImplyLeading: false,
        actions: [Image(image: AssetImage('asset/logo2-removebg-preview.png'))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
//---------------------------------  question container ------------------------------------
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 234),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Question 1 :',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '.......................... ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Choise :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
//---------------------------------------  answer container  ---------------------------------------
            for (int i = 0; i < 4; i++)
              QuizComponent(
                i: i,
              )
          ],
        ),
      ),
    );
  }
}
