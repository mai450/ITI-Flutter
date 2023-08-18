import 'package:flutter/material.dart';
import 'package:quizz_app_maiawad/Screens/category_screen.dart';
import 'package:quizz_app_maiawad/widget/login_comp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  Icon ic = const Icon(Icons.visibility_off, color: Colors.green);

  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.green,
      body: Form(
        key: _formKey,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.30,
                color: Colors.green,
                child: Center(
                  child: Image(
                    image: AssetImage('asset/logo.png'),
                    height: MediaQuery.of(context).size.height * 0.2,
                    // width: MediaQuery.of(context).size.width * 0.4,
                    //height: 70,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 8),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.71,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 239, 236, 236),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
//---------------------------------------------  padding for login container    -------------------------------------------------
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
//--------------------------------------------  login text ----------------------------------------------------------------------
                      const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
//--------------------------------------------  space between login text and username --------------------------------------------
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
//-------------------------------------------  username  ------------------------------------------------------------------------
                      MyTextField(
                        hinttext: 'User Name',
                        prefixicon: Icons.person,
                        validation: (value) {
                          if (!RegExp(r'^[A-Za-z][A-Za-z0-9_]{7,29}$')
                              .hasMatch(value!)) {
                            return 'Invalid username';
                          }
                          return null;
                        },
                      ),
//-----------------------------------------  space between username and email  --------------------------------------------------
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
//--------------------------------------- email --------------------------------------------------------------------------------
                      MyTextField(
                        hinttext: 'Email',
                        prefixicon: Icons.email,
                        validation: (value) {
                          if (!RegExp(
                                  r"^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                              .hasMatch(value!)) {
                            return 'Invalid email address';
                          }
                          return null;
                        },
                      ),

//-----------------------------------------  space between username and password  --------------------------------------------------
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
//-----------------------------------------  password ----------------------------------------------------------------------------
                      // MyTextField(
                      //   hinttext: 'Password',
                      //   prefixicon: Icons.lock,
                      //   sufixxicon: Icons.visibility_off,
                      //   obscureText: true,
                      //   validation: (value) {
                      //     if (!RegExp(
                      //             r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$")
                      //         .hasMatch(value!)) {
                      //       return 'Invalid password';
                      //     }
                      //     return null;
                      //   },
                      // ),

                      TextFormField(
                        validator: (value) {
                          if (!RegExp(
                                  r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$")
                              .hasMatch(value!)) {
                            return 'Invalid password';
                          }
                          return null;
                        },
                        obscureText: pass,
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
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    pass = !pass;
                                    if (pass == false) {
                                      ic = const Icon(Icons.visibility,
                                          color: Colors.green);
                                    } else {
                                      ic = const Icon(Icons.visibility_off,
                                          color: Colors.green);
                                    }
                                  });
                                },
                                icon: ic),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 2),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
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
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green),
                              )),
                        ],
                      ),
//----------------------------------------------  space between first row and login button -------------------------------------
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
//---------------------------------------------- login button -----------------------------------------------------------------
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    CategoryScreen(),
                              ),
                            );
                          }
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
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
//-------------------------------------------------  finger print icon --------------------------------------------------------
                      const Icon(
                        Icons.fingerprint,
                        color: Colors.green,
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
                      //Spacer(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
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
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
