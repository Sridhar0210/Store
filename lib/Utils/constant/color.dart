import 'package:flutter/material.dart';

class StoreColors {
  StoreColors._();

// app Screen Color
  static const Color appScreenColor = Color(0xFFFFFDFD);
  static const Color appScreenDarkColor = Color(0xFF151515);

//button and component color
  static const Color buttonLightColor = Color(0xFF957bd0);
  static const Color buttonDarkColor = Color(0xFFFDD428);
  static const Color accent = Color(0xFFE0E57F);

// text color
  static const Color textColor = Color(0xFF000000);
  static const Color textDarkColor = Color(0xFFFDFDFD);

  //Background Container Color
  static const Color lightContainer = Color(0xFFFDFDFD);
  static const Color darkContainer = Color(0xFF0E0909);
  static const Color lightGreyContainer = Color(0xFFEFEFEF);
  static const Color darkGreyContainer = Color(0xFF2C2C2C);

  // Icon Color
  static const Color iconDarkColor = Color(0xFFFDFDFD);
  static const Color iconColor = Color(0xFF0E0909);

  // Icon Color
  static const Color backgroundColor = Color(0xFFFDFDFD);
  static const Color backgroundDarkColor = Color(0xFF0E0909);

  //error and validation  Color
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  static const Color primary = Color(0xFF1976D2);
  static const Color secondary = Color(0xFFD2CF19);

  //Neutral Color
  static const Color black = Color(0xFF232323);
  static const Color lightBlack = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFA6A5A5);
  static const Color lightGrey = Color(0xFFF4F4F4);
  static const Color greyWhite = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
  static const Color teal = Colors.teal;

  // app bar color
  static const Color appbarColor = Color(0xFF9C54D5);
  static const Color appbarDarkColor = Color(0xFFF57C00);

  // app bar gradient color
  static Gradient appbarLightGradient = LinearGradient(
      end: Alignment.bottomCenter,
      begin: Alignment.topCenter,
      colors: [
        const Color(0xFF5C3188).withOpacity(1),
        const Color(0xFF9C54D5).withOpacity(.9),
        const Color(0xFF957bd0).withOpacity(.9),
      ]);

  static Gradient appbarDarkGradient = LinearGradient(
      end: Alignment.bottomCenter,
      begin: Alignment.topCenter,
      colors: [
        const Color(0xFFF57C00).withOpacity(1),
        const Color(0xFFFACA02).withOpacity(.9),
        const Color(0xFFFFE24B).withOpacity(.9),
      ]);
}
