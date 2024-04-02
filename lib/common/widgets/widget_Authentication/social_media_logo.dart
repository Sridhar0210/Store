import 'package:flutter/material.dart';

import '../../../Utils/constant/image_string.dart';
import '../../../Utils/constant/sizes.dart';

class SocialMediaLogo extends StatelessWidget {
  const SocialMediaLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: const Image(
            height: StoreSizes.iconXl,
            width: StoreSizes.iconXl,
            image: AssetImage(StoreImages.googleLogo),
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(width: StoreSizes.spaceBTWItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: const Image(
            height: StoreSizes.iconXl,
            width: StoreSizes.iconXl,
            image: AssetImage(StoreImages.facebookLogo),
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
