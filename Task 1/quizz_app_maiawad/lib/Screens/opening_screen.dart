import 'package:flutter/material.dart';
import 'package:quizz_app_maiawad/Screens/login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // -------------------------------  background image  ---------------------------------
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('asset/background.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
// ----------------------------  center image  ---------------------------------------------------
            if (MediaQuery.of(context).orientation == Orientation.portrait)
              Image(
                image: const AssetImage('asset/6-removebg-preview.png'),
                height: MediaQuery.of(context).size.height * 0.2,
              ),

            // if (MediaQuery.of(context).orientation == Orientation.landscape)
            //   Image(
            //     image: const AssetImage('asset/6-removebg-preview.png'),
            //     height: MediaQuery.of(context).size.height * 0.3,
            //   ),

// --------------------------  frist text (ITI Quiz App) ----------------------------------------
            const Text(
              'ITI Quiz App',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                  color: Color.fromARGB(255, 255, 235, 59)),
            ),
            const SizedBox(
              height: 10,
            ),
// -------------------------  second tex (We Are creative .....) ----------------------------------
            const Text(
              'We Are Creative, enjoy our App',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'DancingScript',
                  color: Colors.white),
            ),
            // const SizedBox(
            //   height: 200,
            // ),

            const Spacer(),
// -----------------------  start button -----------------------------------------------
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const LoginScreen(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                child: const Text(
                  'Start',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'EBGaramond'),
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
