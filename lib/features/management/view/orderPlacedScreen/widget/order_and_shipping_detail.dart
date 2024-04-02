import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';

class OrderAndShipping extends StatelessWidget {
  const OrderAndShipping({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.local_shipping),
                const SizedBox(width: StoreSizes.spaceBTWItems),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "processing",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(color: StoreColors.primary),
                    ),
                    const SizedBox(width: StoreSizes.spaceBTWItems / 4),
                    Text(
                      "02 Oct 2024",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: StoreSizes.m,
              ),
            ),
          ],
        ),
        const SizedBox(height: StoreSizes.spaceBTWItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Iconsax.tag),
                const SizedBox(width: StoreSizes.spaceBTWItems),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(color: StoreColors.grey),
                    ),
                    const SizedBox(width: StoreSizes.spaceBTWItems / 4),
                    Text(
                      "#35324",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                const Icon(Iconsax.calendar),
                const SizedBox(width: StoreSizes.spaceBTWItems),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(color: StoreColors.grey),
                    ),
                    const SizedBox(width: StoreSizes.spaceBTWItems / 4),
                    Text(
                      "03 Oct 2024",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
