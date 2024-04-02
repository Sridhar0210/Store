import 'package:flutter/material.dart';

import '../../../Utils/constant/color.dart';
import '../../../Utils/constant/sizes.dart';
import '../../../Utils/helpers/helper_function.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({
    super.key,
    required this.containerHeight,
    required this.containerWidth,
    required this.positionedHeight,
    required this.positionedWidth,
  });
  final double containerHeight;
  final double containerWidth;
  final double positionedHeight;
  final double positionedWidth;
  @override
  Widget build(BuildContext context) {
    final darkMode = StoreHelper.isDarkMode(context);
    final containerColor = darkMode
        ? StoreColors.darkGreyContainer.withOpacity(1)
        : StoreColors.lightGreyContainer.withOpacity(1);
    return Positioned(
      top: positionedHeight,
      left: positionedWidth,
      child: Container(
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(StoreSizes.borderRadiusL),
          color: containerColor,
        ),
      ),
    );
  }
}
