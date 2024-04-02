import 'package:flutter/material.dart';

import '../../../../../Utils/constant/sizes.dart';

class BoardingWidget extends StatelessWidget {
  const BoardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.imageHeight,
    required this.imageWidth,
  });
  final String image, title, subtitle;
  final double imageHeight, imageWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(StoreSizes.defaultSpace),
      child: SizedBox(
        height: imageHeight,
        width: imageWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(image)),
            const SizedBox(
              height: StoreSizes.spaceBTWSections,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: StoreSizes.spaceBTWSections,
            ),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
