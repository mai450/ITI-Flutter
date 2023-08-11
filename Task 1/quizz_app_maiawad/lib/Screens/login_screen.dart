import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
//----------------------------------------- container for logoooo ---------------------------------------------------
            Image(
              image: const AssetImage('asset/logo.png'),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.3,
            ),

            Expanded(
//----------------------------------------  container for login items --------------------------------------------
                child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 239, 236, 236),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
//---------------------------------------------  padding for login container    -------------------------------------------------
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
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
                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
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
                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          )),
                    ),
//-----------------------------------------------  padding form the left for the row ----------------------------------------------
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
//--------------------------------------------------- frist row ---------------------------------------------------------------
                      child: Row(
                        children: [
                          const Text(
                            'New to quiz app?',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
//-----------------------------------------------  register button  ---------------------------------------------------------
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green),
                              )),
                        ],
                      ),
                    ),
//----------------------------------------------  space between first row and login button -------------------------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
//---------------------------------------------- login button -----------------------------------------------------------------
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: const StadiumBorder(),
                            elevation: 10,
                            shadowColor: Colors.grey,
                            minimumSize: const Size.fromHeight(60)),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
//--------------------------------------------------  space between login button and finger print icon ------------------------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
//-------------------------------------------------  finger print icon --------------------------------------------------------
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.fingerprint,
                        color: Colors.blue,
                        size: 50,
                      ),
                    ),
//--------------------------------------------------  space between finger print icon and text under it  ------------------------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),

                    const Text(
                      'Use Touch ID',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
//--------------------------------------------------  space between text and bottom row  ------------------------------------
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
//--------------------------------------------------  bottom row ------------------------------------------------------------
                    Row(
                      children: [
//--------------------------------------------------  checkbox -------------------------------------------------------------
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                          activeColor: Colors.green,
                        ),

                        const Text(
                          'Remember me',
                          style: TextStyle(fontSize: 12),
                        ),
//--------------------------------------------------  space between row components ----------------------------------------------
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
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
                    )
                  ],
                ),
              ),
            ))
          ],
        ));
  }
}
