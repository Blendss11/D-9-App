import 'package:d9/utils/theme/custom_theme.dart/bottom_sheet.dart';
import 'package:d9/utils/theme/custom_theme.dart/checkbox_theme.dart';
import 'package:d9/utils/theme/custom_theme.dart/chip_theme.dart';
import 'package:d9/utils/theme/custom_theme.dart/elevated_button.dart';
import 'package:d9/utils/theme/custom_theme.dart/outline_theme.dart';
import 'package:d9/utils/theme/custom_theme.dart/textTheme.dart';
import 'package:d9/utils/theme/custom_theme.dart/textfield_theme.dart';
import 'package:flutter/material.dart';
import 'package:d9/utils/theme/custom_theme.dart/appbar_theme.dart';

class ThemeApp{
  ThemeApp._();


  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: const Color(0xFFFB54135),
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Color(0xFFFBF3D7),
    appBarTheme: TappbarTheme.lightAppBarTheme,
    checkboxTheme: TCheackBox.lightCheckBoxTheme,
    bottomSheetTheme: TButtonSheet.lightBottomSheetTheme,
    elevatedButtonTheme: TelevatedTheme.lightElevatedTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputTheme,
    outlinedButtonTheme: ToutlineTheme.lightOutlineTheme

  );
  static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: const Color(0xFFFB54135),
    scaffoldBackgroundColor: const Color(0xFFFBF3D7),
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TappbarTheme.darkAppBarTheme,
    checkboxTheme: TCheackBox.darkCheckBoxTheme,
    bottomSheetTheme: TButtonSheet.darkBottomSheetTheme,
    elevatedButtonTheme: TelevatedTheme.darkElevatedTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputTheme,
    outlinedButtonTheme: ToutlineTheme.darkOutlineTheme
  );

}