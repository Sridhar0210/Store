import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../Utils/constant/color.dart';

class StoreDivider extends StatelessWidget {
  const StoreDivider({super.key, this.dividerText});
  final String? dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = StoreHelper.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
              indent: 20,
              endIndent: 5,
              thickness: .5,
              color: dark
                  ? StoreColors.appScreenColor
                  : StoreColors.appScreenDarkColor),
        ),
        Text(
          dividerText!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
              indent: 5,
              endIndent: 20,
              thickness: .5,
              color: dark
                  ? StoreColors.appScreenColor
                  : StoreColors.appScreenDarkColor),
        ),
      ],
    );
  }
}
