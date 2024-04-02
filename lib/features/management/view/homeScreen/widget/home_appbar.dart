import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/Utils/constant/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/helpers/helper_function.dart';
import '../../../../../common/widgets/widget.images/appbar_widget.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final iconColor = StoreHelper.isDarkMode(context)
        ? StoreColors.iconColor
        : StoreColors.iconDarkColor;
    final textColor = StoreHelper.isDarkMode(context)
        ? StoreColors.textColor
        : StoreColors.iconDarkColor;

    return AppBarWidget(
      showBackArrow: false,
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications_none_rounded,
            color: iconColor,
            size: StoreSizes.iconL,
          ),
          onPressed: () {},
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.person, color: iconColor, size: StoreSizes.iconL),
        ),
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StoreTexts.appBarTitle,
            style:
                Theme.of(context).textTheme.labelLarge!.apply(color: textColor),
          ),
          Text(
            StoreTexts.appbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: textColor),
          ),
        ],
      ),
    );
  }
}
