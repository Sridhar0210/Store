import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:flutter/material.dart';

class StoreShadows {
  static final verticalGridShadows = BoxShadow(
      color: StoreColors.lightGrey.withOpacity(.2),
      blurRadius: 20,
      spreadRadius: 5,
      offset: const Offset(0, 1));

  static final horizontalGridShadows = BoxShadow(
      color: StoreColors.lightGrey.withOpacity(.2),
      blurRadius: 20,
      spreadRadius: 2,
      offset: const Offset(0, 1));
}
