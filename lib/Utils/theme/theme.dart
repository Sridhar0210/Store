import 'package:e_commerce_application/Utils/theme/customTheme/chip_theme.dart';
import 'package:flutter/material.dart';

import 'customTheme/appbar_theme.dart';
import 'customTheme/bottom_sheet_theme.dart';
import 'customTheme/button_theme.dart';
import 'customTheme/checkbox_theme.dart';
import 'customTheme/dialog_theme.dart';
import 'customTheme/text_form_field_theme.dart';
import 'customTheme/text_theme.dart';

class StoreTheme {
  StoreTheme._(); // private constructor

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'OpenSans',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    chipTheme: StoreChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: StoreTextFormFieldTheme.lightInputDecorationTheme,
    textTheme: StoreTextTheme.lightTextTheme,
    elevatedButtonTheme: StoreElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: StoreElevatedButtonTheme.lightOutlineButtonTheme,
    checkboxTheme: StoreCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: StoreBottomSheetTheme.lightBottomSheetTheme,
    appBarTheme: StoreAppbarTheme.lightAppbarTheme,
    dialogTheme: StoreDialogTheme.lightDialogTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'OpenSans',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    inputDecorationTheme: StoreTextFormFieldTheme.darkInputDecorationTheme,
    textTheme: StoreTextTheme.darkTextTheme,
    chipTheme: StoreChipTheme.darkChipTheme,
    elevatedButtonTheme: StoreElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: StoreElevatedButtonTheme.darkOutlineButtonTheme,
    checkboxTheme: StoreCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: StoreBottomSheetTheme.darkBottomSheetTheme,
    appBarTheme: StoreAppbarTheme.darkAppbarTheme,
    dialogTheme: StoreDialogTheme.darkDialogTheme,
  );
}
