import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../Utils/constant/color.dart';
import '../../../Utils/constant/sizes.dart';
import '../../../Utils/helpers/helper_function.dart';

// Elevated Button Widget
class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.onPress,
    required this.text,
    this.shape,
  });

  final dynamic onPress;
  final String text;
  final OutlinedBorder? shape;

  @override
  Widget build(BuildContext context) {
    final buttonColor = StoreHelper.isDarkMode(context)
        ? StoreColors.buttonDarkColor
        : StoreColors.buttonLightColor;
    final textColor = StoreHelper.isDarkMode(context)
        ? StoreColors.textColor
        : StoreColors.textDarkColor;

    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: shape,
              side: BorderSide.none,
              backgroundColor: buttonColor),
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ));
  }
}

// Icon Button Widget
class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.onPress,
    required this.icon,
    this.shape,
    this.buttonColor,
    this.iconColors,
    this.showBackGroundColor = true,
    this.showIconColor = true,
    this.iconSize = 18,
    this.height = 70,
    this.width = 70,
  });
  final double iconSize, height, width;
  final VoidCallback onPress;
  final IconData icon;
  final OutlinedBorder? shape;
  final Color? buttonColor;
  final Color? iconColors;
  final bool showBackGroundColor, showIconColor;

  @override
  Widget build(BuildContext context) {
    final buttonColor = StoreHelper.isDarkMode(context)
        ? StoreColors.buttonDarkColor
        : StoreColors.buttonLightColor;
    final iconColor = StoreHelper.isDarkMode(context)
        ? StoreColors.iconDarkColor
        : StoreColors.iconColor;

    return SizedBox(
        height: height,
        width: width,
        child: IconButton(
          style: IconButton.styleFrom(
              shape: shape,
              elevation: 1,
              iconSize: StoreSizes.iconXl,
              side: BorderSide.none,
              backgroundColor:
                  showBackGroundColor ? buttonColor : Colors.transparent),
          onPressed: onPress,
          icon: Icon(
            icon,
            color: showIconColor ? iconColor : iconColors,
            size: iconSize,
          ),
        ));
  }
}

// Floating Button Widget
class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({
    super.key,
    required this.onPress,
    required this.icon,
    required this.toolTip,
  });

  final dynamic onPress;
  final IconData icon;
  final String toolTip;
  @override
  Widget build(BuildContext context) {
    final buttonColor = StoreHelper.isDarkMode(context)
        ? StoreColors.buttonDarkColor
        : StoreColors.buttonLightColor;
    final textColor = StoreHelper.isDarkMode(context)
        ? StoreColors.textColor
        : StoreColors.textDarkColor;

    return FloatingActionButton(
      tooltip: toolTip,
      backgroundColor: buttonColor,
      onPressed: onPress,
      child: Icon(
        icon,
        color: textColor,
      ),
    );
  }
}

// OutLined Button Widget
class OutLinedButton extends StatelessWidget {
  const OutLinedButton({
    super.key,
    required this.onPress,
    required this.text,
  });

  final dynamic onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    final buttonColor = StoreHelper.isDarkMode(context)
        ? StoreColors.buttonDarkColor
        : StoreColors.buttonLightColor;
    final textColor = StoreHelper.isDarkMode(context)
        ? StoreColors.textColor
        : StoreColors.textDarkColor;
    return SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide.none, backgroundColor: buttonColor),
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ));
  }
}

// Text Button Widget
class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.onPress,
    required this.text,
    required this.buttonTextColor,
    required this.fontSize,
  });

  final dynamic onPress;
  final Color buttonTextColor;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(side: BorderSide.none),
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, color: buttonTextColor),
      ),
    );
  }
}

/// Cart Button

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonWidget(
            height: 40, width: 40, onPress: () {}, icon: Iconsax.minus),
        const SizedBox(width: StoreSizes.spaceBTWItems / 2),
        Text(
          '2',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .apply(color: StoreColors.black),
        ),
        const SizedBox(width: StoreSizes.spaceBTWItems / 2),
        IconButtonWidget(
            height: 40, width: 40, onPress: () {}, icon: Iconsax.add),
      ],
    );
  }
}
