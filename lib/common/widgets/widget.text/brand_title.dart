import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitle extends StatelessWidget {
  const BrandTitle({
    super.key,
    required this.brandTitle,
    this.smallSize = false,
    this.verified = false,
    this.overflow,
    this.maxLines = 2,
    this.textAlign = TextAlign.center,
  });
  final String brandTitle;
  final TextAlign textAlign;
  final TextOverflow? overflow;
  final bool smallSize;
  final bool verified;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          brandTitle,
          style: smallSize
              ? Theme.of(context).textTheme.labelLarge
              : Theme.of(context).textTheme.titleSmall,
          overflow: overflow,
          maxLines: maxLines,
          textAlign: textAlign,
        ),
        const SizedBox(
          width: StoreSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          size: StoreSizes.m,
          color: StoreColors.primary,
        )
      ],
    );
  }
}
