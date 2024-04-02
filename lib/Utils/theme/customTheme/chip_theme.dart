import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:flutter/material.dart';

class StoreChipTheme {
  StoreChipTheme._();

  /// Light Chip Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
      deleteIconColor: StoreColors.grey.withOpacity(.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: StoreColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: StoreColors.white);

  /// Dark Chip theme
  static ChipThemeData darkChipTheme = ChipThemeData(
      deleteIconColor: StoreColors.darkGrey.withOpacity(.4),
      labelStyle: const TextStyle(color: Colors.white),
      selectedColor: StoreColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: StoreColors.white);
}
