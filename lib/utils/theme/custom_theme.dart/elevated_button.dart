import 'package:flutter/material.dart';

class TelevatedTheme {
  TelevatedTheme._();

  static final lightElevatedTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: Color(0xFFFB54135),
    disabledForegroundColor: Colors.black,
    disabledBackgroundColor: Colors.black,
    side: const BorderSide(color: Color(0xFFFB54135)),
    padding: const EdgeInsets.symmetric(vertical: 18),
    textStyle: const TextStyle(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));

  static final darkElevatedTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: Color(0xFFFB54135),
    disabledForegroundColor: Colors.black,
    disabledBackgroundColor: Colors.black,
    side: const BorderSide(color: Color(0xFFFB54135)),
    padding: const EdgeInsets.symmetric(vertical: 18),
    textStyle: const TextStyle(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));
}
