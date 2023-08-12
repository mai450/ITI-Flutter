import 'package:flutter/material.dart';
import 'package:quizz_app_maiawad/Screens/category_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.green,
        body: Column(
          children: [
//----------------------------------------- container for logoooo ---------------------------------------------------
            Center(
              child: Image(
                image: const AssetImage('asset/logo.png'),
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 239, 236, 236),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                //---------------------------------------------  padding for login container    -------------------------------------------------
                child: Column(
                  children: [
                    //--------------------------------------------  login text ----------------------------------------------------------------------
                    const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    //--------------------------------------------  space between login text and username --------------------------------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    //-------------------------------------------  username  ------------------------------------------------------------------------
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Username',
                          // labelStyle:
                          //     TextStyle(fontSize: 18, color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.green, width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          )),
                    ),
                    //-----------------------------------------  space between username and password  --------------------------------------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //-----------------------------------------  password ----------------------------------------------------------------------------
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          // labelStyle:
                          //     TextStyle(fontSize: 18, color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.green,
                          ),
                          suffixIcon: const Icon(
                            Icons.visibility_off,
                            color: Colors.green,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.green, width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          )),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),

                    //-----------------------------------------------  padding form the left for the row ----------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'New to quiz app?',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        //-----------------------------------------------  register button  ---------------------------------------------------------
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              'Register',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.green),
                            )),
                      ],
                    ),
                    //----------------------------------------------  space between first row and login button -------------------------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    //---------------------------------------------- login button -----------------------------------------------------------------
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const CategoryScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: const StadiumBorder(),
                          elevation: 10,
                          shadowColor: Colors.grey,
                          minimumSize: Size(140, 40)),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    //--------------------------------------------------  space between login button and finger print icon ------------------------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //-------------------------------------------------  finger print icon --------------------------------------------------------
                    const Icon(
                      Icons.fingerprint,
                      color: Colors.blue,
                      size: 50,
                    ),
                    //--------------------------------------------------  space between finger print icon and text under it  ------------------------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),

                    const Text(
                      'Use Touch ID',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    //--------------------------------------------------  space between text and bottom row  ------------------------------------
                    Spacer(),
                    // --------------------------------------------------  bottom row ------------------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //--------------------------------------------------  checkbox -------------------------------------------------------------
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                              activeColor: Colors.green,
                            ),
                            const Text(
                              'Remember me',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),

                        //--------------------------------------------------  forget password button  ----------------------------------------------
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forget password?',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.green),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
