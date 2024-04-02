import 'package:flutter/material.dart';

import '../../../../../Utils/constant/sizes.dart';

class OrderTotal extends StatelessWidget {
  const OrderTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "SubTotal",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "Tax fees",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "Shipping fees",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: StoreSizes.spaceBTWItems,
            ),
            Text(
              "Order Total",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "\$ 1400",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "\$ 140",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "\$5",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: StoreSizes.spaceBTWItems,
            ),
            Text(
              "\$ 1545",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ],
    );
  }
}
