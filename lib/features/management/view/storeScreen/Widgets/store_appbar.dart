import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/Utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/helpers/helper_function.dart';
import '../../../../../common/widgets/widget.images/appbar_widget.dart';

class StoreAppbar extends StatelessWidget implements PreferredSizeWidget {
  const StoreAppbar({
    super.key,
    this.appbarTitle,
    this.appbarSubTitle,
  });
  final String? appbarTitle;
  final String? appbarSubTitle;
  @override
  Widget build(BuildContext context) {
    final iconColor = StoreHelper.isDarkMode(context)
        ? StoreColors.iconDarkColor
        : StoreColors.iconColor;
    return AppBarWidget(
      showBackArrow: false,
      actions: [
        IconButton(
          icon: Icon(
            Icons.shopping_bag,
            color: iconColor,
            size: StoreSizes.iconL,
          ),
          onPressed: () {},
        ),
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(appbarTitle!,
              style: Theme.of(context).textTheme.headlineMedium!),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(StoreDeviceUtils.getAppBarHeight());
}
