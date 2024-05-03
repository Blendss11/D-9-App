import 'package:flutter/material.dart';

class TTextFieldTheme {
  TTextFieldTheme._();


  static InputDecorationTheme lightInputTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.black,
    suffixIconColor: Colors.black,
    

    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.red),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.red),
    errorStyle:  const TextStyle().copyWith(fontStyle: FontStyle.normal),

    floatingLabelStyle: const TextStyle().copyWith(color: Colors.red.withOpacity(0.8)),

    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey)
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black)
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.orange)
    ),
  );


  static InputDecorationTheme darkInputTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.black,
    suffixIconColor: Colors.black,
    

    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle:  const TextStyle().copyWith(fontStyle: FontStyle.normal),

    floatingLabelStyle: const TextStyle().copyWith(color: Colors.red.withOpacity(0.8)),

    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.grey)
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.black)
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.orange)
    ),
  );
}