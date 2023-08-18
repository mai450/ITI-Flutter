import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app_maiawad/widget/quiz_comp.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
//---------------------------------  app bar  -------------------------------------------
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title:
            //Center(child: Text('sports')),
            const Row(
          children: [
            Text('1/10'),
            SizedBox(
              width: 80,
            ),
            Text('Sport Test'),
          ],
        ),
        //leading: null,
        automaticallyImplyLeading: false,
        actions: [Image(image: AssetImage('asset/logo2.png'))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(
            //   height: 40,
            // ),
            Text(
              'Question 1/10 :',
              style: GoogleFonts.aBeeZee(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 12,
            ),
//---------------------------------  question container ------------------------------------
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.13,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 234, 234, 234),
                border: Border.all(
                    color: Color.fromARGB(175, 196, 196, 196), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                'How many players in football team?',
                style: GoogleFonts.abel(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Choise :',
              style: GoogleFonts.abel(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 35,
            ),
//---------------------------------------  answer container  ---------------------------------------
            for (int i = 0; i < 4; i++)
              QuizComponent(
                i: i,
              ),
            // SizedBox(
            //   height: 15,
            // ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: InkWell(
            //     onTap: () {},
            //     child: Container(
            //         width: 150,
            //         height: 50,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.all(Radius.circular(25)),
            //             border: Border.all(color: Colors.deepPurple)),
            //         child: Center(
            //           child: Text(
            //             'NEXT',
            //             style: GoogleFonts.nunito(
            //                 fontSize: 20, color: Colors.deepPurple),
            //           ),
            //         )),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
