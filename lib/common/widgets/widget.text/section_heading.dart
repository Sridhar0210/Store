import 'package:flutter/material.dart';

import '../../../Utils/constant/color.dart';
import '../../../Utils/constant/sizes.dart';
import '../../../Utils/helpers/helper_function.dart';
import '../widget.buttons/button_widget.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textTitleColor,
    this.onPress,
    this.showButton = true,
    required this.sectionTitle,
    this.buttonTitle = "View all  ",
  });

  final Color? textTitleColor;
  final void Function()? onPress;
  final bool showButton;
  final String sectionTitle, buttonTitle;

  @override
  Widget build(BuildContext context) {
    final textColor = StoreHelper.isDarkMode(context)
        ? StoreColors.buttonDarkColor
        : StoreColors.buttonLightColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textTitleColor),
        ),
        if (showButton)
          TextButtonWidget(
              onPress: onPress,
              text: buttonTitle,
              buttonTextColor: textColor.withOpacity(.5),
              fontSize: StoreSizes.fontSizeSm)
      ],
    );
  }
}
