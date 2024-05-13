import 'package:flutter/material.dart';

class MyEleButt extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyEleButt({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 220,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.black),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
