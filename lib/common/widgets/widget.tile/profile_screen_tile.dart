import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreProfileTile extends StatelessWidget {
  const StoreProfileTile({
    super.key,
    this.tileTitle,
    this.isIcon = true,
    this.tileSubTitle,
    this.tileIcon,
    this.tileTrailingIcon,
    this.trailing,
    this.infoTitle,
  });
  final bool isIcon;
  final Widget? trailing;
  final String? tileTitle, tileSubTitle, infoTitle;
  final IconData? tileIcon;
  final IconData? tileTrailingIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: StoreHelper.screenWidth() * .35,
      trailing: isIcon
          ? IconButton(
              onPressed: () {},
              icon: Icon(
                tileTrailingIcon,
                size: StoreSizes.m,
                color: StoreColors.grey,
              ))
          : trailing,
      title: Text(
        tileTitle!,
        style: Theme.of(context).textTheme.labelSmall,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Text(infoTitle!,
          style: Theme.of(context).textTheme.titleMedium,
          overflow: TextOverflow.ellipsis),
    );
  }
}
