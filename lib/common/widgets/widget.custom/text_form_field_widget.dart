import 'package:e_commerce_application/Utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../Utils/constant/color.dart';
import '../../../Utils/constant/sizes.dart';
import '../../../Utils/helpers/helper_function.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    this.searchBarTitle,
    this.showBorder = false,
    this.showBackGround = false,
    required this.onTap,
    this.searchBarIcon,
  });
  final String? searchBarTitle;
  final IconData? searchBarIcon;
  final bool showBorder;
  final bool showBackGround;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final iconColor = StoreHelper.isDarkMode(context)
        ? StoreColors.iconDarkColor
        : StoreColors.iconColor;
    final screenColor = StoreHelper.isDarkMode(context)
        ? StoreColors.appScreenDarkColor
        : StoreColors.appScreenColor;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: StoreSizes.cardSizeL * 2.5,
        width: StoreDeviceUtils.getScreenWidth(),
        decoration: BoxDecoration(
            color: showBackGround ? screenColor : Colors.transparent,
            border: showBorder ? Border.all(color: StoreColors.grey) : null,
            borderRadius: BorderRadius.circular(StoreSizes.borderRadiusL)),
        child: Row(
          children: [
            const SizedBox(
              width: StoreSizes.spaceBTWItems / 2,
            ),
            Icon(
              searchBarIcon,
              color: iconColor,
              size: StoreSizes.iconL,
            ),
            const SizedBox(
              width: StoreSizes.spaceBTWItems,
            ),
            Text(searchBarTitle!, style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
