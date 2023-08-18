import 'package:flutter/material.dart';

Widget MyTextField({
  required String hinttext,
  required IconData prefixicon,
  required String? Function(String?)? validation,
  final IconData? sufixxicon,
  bool obscureText = false,
  //final String? Function(String?)? iconbutton,
}) {
  return TextFormField(
    validator: validation,
    obscureText: obscureText,
    decoration: InputDecoration(
        hintText: hinttext,
        // labelStyle:
        //     TextStyle(fontSize: 18, color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: Icon(
          prefixicon,
          color: Colors.green,
        ),
        suffixIcon: Icon(
          sufixxicon,
          color: Colors.green,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green, width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        )),
  );
}
