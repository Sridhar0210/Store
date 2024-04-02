import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../Utils/constant/sizes.dart';

class ShareAndRatting extends StatelessWidget {
  const ShareAndRatting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// ratting
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(
              width: StoreSizes.spaceBTWItems / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: '(2000)')
            ]))
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
          iconSize: StoreSizes.iconM,
        )
      ],
    );
  }
}
