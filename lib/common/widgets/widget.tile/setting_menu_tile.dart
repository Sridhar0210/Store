import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:flutter/material.dart';

class StoreSettingMenuTile extends StatelessWidget {
  const StoreSettingMenuTile({
    super.key,
    this.tileTitle,
    this.isIcon = true,
    this.tileSubTitle,
    this.tileIcon,
    this.tileTrailingIcon,
    this.trailing,
    this.onPress,
  });
  final bool isIcon;
  final Widget? trailing;
  final String? tileTitle, tileSubTitle;
  final IconData? tileIcon;
  final IconData? tileTrailingIcon;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        trailing: isIcon
            ? IconButton(
                onPressed: onPress,
                icon: Icon(
                  tileTrailingIcon,
                  color: StoreColors.grey,
                ))
            : trailing,
        subtitle: Text(
          tileSubTitle!,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        title: Text(tileTitle!, style: Theme.of(context).textTheme.titleLarge),
        leading: Icon(
          tileIcon,
          color: StoreColors.teal,
        ));
  }
}
