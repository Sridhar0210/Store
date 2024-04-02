import 'package:e_commerce_application/Utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget.buttons/button_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    this.title,
    this.actions,
    this.showBackArrow = false,
    this.leadingOnPress,
    this.leadingIcon,
  });

  final Widget? title;
  final List<Widget>? actions;
  final bool showBackArrow;
  final VoidCallback? leadingOnPress;
  final IconData? leadingIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: actions,
      primary: true,
      title: title,
      leading: showBackArrow
          ? IconButtonWidget(
              showBackGroundColor: false,
              onPress: () => Get.back(),
              icon: Icons.arrow_back,
            )
          : leadingIcon != null
              ? IconButton(
                  onPressed: () => leadingOnPress, icon: Icon(leadingIcon))
              : null,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(StoreDeviceUtils.getAppBarHeight());
}
