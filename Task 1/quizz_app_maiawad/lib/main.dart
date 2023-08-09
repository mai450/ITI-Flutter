import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // -------------------------------  background image  ---------------------------------
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('asset/background.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 250,
              ),
              // ----------------------------  center image  -----------------------------------------
              const Image(
                image: AssetImage('asset/6-removebg-preview.png'),
                height: 120,
              ),
              // --------------------------  frist text (ITI Quiz App) -------------------------------
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
              // -------------------------  second tex (We Are creative .....) ----------------------
              const Text(
                'We Are Creative, enjoy our App',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'DancingScript',
                    color: Colors.white),
              ),
              const SizedBox(
                height: 200,
              ),
              // -----------------------  start button -----------------------------------------------
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 140, vertical: 4))),
                child: const Text(
                  'Start',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'EBGaramond'),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
