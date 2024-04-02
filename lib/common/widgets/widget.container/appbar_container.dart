import 'package:flutter/material.dart';

import '../../../Utils/constant/color.dart';
import '../../../Utils/constant/sizes.dart';
import '../../../Utils/helpers/helper_function.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    super.key,
    this.appbarImage,
    required this.child,
    this.height,
    this.backGroundImage = false,
    this.isNetworkImage = false,
  });

  final String? appbarImage;
  final Widget child;
  final double? height;
  final bool backGroundImage, isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final componentColor = StoreHelper.isDarkMode(context)
        ? StoreColors.appbarDarkColor
        : StoreColors.appbarDarkColor;
    final componentGradient = StoreHelper.isDarkMode(context)
        ? StoreColors.appbarDarkGradient
        : StoreColors.appbarLightGradient;

    return Container(
      height: height,
      width: StoreHelper.screenWidth(),
      decoration: BoxDecoration(
          image: backGroundImage && appbarImage != null
              ? DecorationImage(
                  image: isNetworkImage
                      ? NetworkImage(appbarImage!)
                      : AssetImage(appbarImage!) as ImageProvider,
                  opacity: .3,
                  fit: BoxFit.fill)
              : null,
          borderRadius: BorderRadius.circular(StoreSizes.borderRadiusL),
          color: componentColor,
          gradient: componentGradient),
      child: child,
    );
  }
}
