import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final dynamic controller;
  final bool obscureText;
  final String hintText;
  const MyTextField(
      {required this.obscureText,
      required this.hintText,
      required this.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      child: TextField(
        //textAlign: TextAlign.justify,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 13.08, fontFamily: 'Poppins'),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey))),
      ),
    );
  }
}
