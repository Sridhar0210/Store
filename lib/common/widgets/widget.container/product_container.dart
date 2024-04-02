import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    this.width,
    this.height,
    this.applyImageRadius = false,
    this.onPressed,
    this.padding,
    this.backDarkGroundColor,
    this.borderRadius = 0,
    this.margin,
    this.child,
    this.showColor = false,
    this.showBorder = false,
    this.backLightGroundColor,
    this.backGroundColor,
    this.productImage,
    this.showImage = false,
    this.isNetworkImage = false,
  });
  final double? width, height;
  final double? borderRadius;
  final String? productImage;
  final bool applyImageRadius;
  final bool showColor;
  final bool showBorder;
  final bool showImage;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? backDarkGroundColor;
  final Color? backLightGroundColor;
  final Color? backGroundColor;
  final EdgeInsets? margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final dark = StoreHelper.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
            image: showImage
                ? DecorationImage(
                    image: isNetworkImage
                        ? NetworkImage(productImage!)
                        : AssetImage(productImage!) as ImageProvider)
                : null,
            border: showBorder
                ? dark
                    ? Border.all(color: StoreColors.grey)
                    : Border.all(color: StoreColors.darkGrey)
                : const Border(),
            color: showColor
                ? dark
                    ? backDarkGroundColor
                    : backLightGroundColor
                : backGroundColor,
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius!)
                : BorderRadius.zero),
        child: child,
      ),
    );
  }
}
