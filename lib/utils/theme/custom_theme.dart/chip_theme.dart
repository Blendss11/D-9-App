import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();


  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.black.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: const Color(0xFFFB54135),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.black
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.black,
    labelStyle:  TextStyle(color: Colors.white),
    selectedColor:  Color(0xFFFB54135),
    padding:  EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.black
  );
}