import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/device/device_utility.dart';
import '../../../../../Utils/helpers/helper_function.dart';
import '../../../controller/boardingController/boarding_controller.dart';

class BoardingDotIndicator extends StatelessWidget {
  const BoardingDotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final componentColor = StoreHelper.isDarkMode(context)
        ? StoreColors.buttonDarkColor
        : StoreColors.buttonLightColor;
    final dotIndicatorController = BoardingController.instance;

    return Positioned(
        bottom: StoreDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: StoreSizes.defaultSpace,
        child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
                activeDotColor: componentColor, dotHeight: 6),
            controller: dotIndicatorController.pageController,
            count: 3));
  }
}
