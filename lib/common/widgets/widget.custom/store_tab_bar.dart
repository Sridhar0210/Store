import 'package:flutter/material.dart';

import '../../../Utils/constant/color.dart';
import '../../../Utils/device/device_utility.dart';
import '../../../Utils/helpers/helper_function.dart';

/// To get a background color for a tab bar we need to wrap tab bar with material widget
/// to wrap this we need [PreferredSizeWidget].
class StoreTabBar extends StatelessWidget implements PreferredSizeWidget {
  const StoreTabBar({
    super.key,
    required this.tabs,
  });
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = StoreHelper.isDarkMode(context);
    return Material(
      child: TabBar(
        labelColor:
            dark ? StoreColors.appScreenDarkColor : StoreColors.appScreenColor,
        unselectedLabelColor: StoreColors.grey,
        indicatorColor: StoreColors.primary,
        isScrollable: true,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(StoreDeviceUtils.getAppBarHeight());
}
