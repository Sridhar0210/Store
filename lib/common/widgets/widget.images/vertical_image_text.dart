import 'package:flutter/material.dart';

import '../../../Utils/constant/color.dart';
import '../../../Utils/constant/sizes.dart';
import '../../../Utils/helpers/helper_function.dart';

class StoreVerticalImageText extends StatelessWidget {
  const StoreVerticalImageText({
    super.key,
    required this.containerImage,
    required this.radius,
    required this.imageTitle,
  });
  final String containerImage;
  final double radius;
  final String imageTitle;
  @override
  Widget build(BuildContext context) {
    final componentColor = StoreHelper.isDarkMode(context)
        ? StoreColors.darkGreyContainer
        : StoreColors.lightContainer;
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: StoreSizes.m),
        child: Column(
          children: [
            CircleAvatar(
              radius: radius,
              backgroundColor: componentColor,
              child: SizedBox(
                height: StoreSizes.iconXl,
                width: StoreSizes.iconXl,
                child: Image.asset(
                  containerImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: StoreSizes.spaceBTWItems / 2,
            ),
            SizedBox(
              width: 50,
              child: Text(
                imageTitle,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: StoreColors.lightContainer),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
