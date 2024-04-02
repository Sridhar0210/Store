import 'package:flutter/material.dart';

class StoreDialogTheme {
  StoreDialogTheme._();

  static DialogTheme lightDialogTheme = const DialogTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),
    contentTextStyle: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
  );

  static DialogTheme darkDialogTheme = const DialogTheme(
    backgroundColor: Colors.black,
    elevation: 0,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
    contentTextStyle: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
  );
}
