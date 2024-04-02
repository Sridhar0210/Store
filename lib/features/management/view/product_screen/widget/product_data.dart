import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../common/widgets/widget.container/product_container.dart';
import '../../../../../common/widgets/widget.text/brand_title.dart';
import '../../../../../common/widgets/widget.text/product_title.dart';

class ProductData extends StatelessWidget {
  const ProductData({super.key, required this.brandTitle});

  final String brandTitle;

  @override
  Widget build(BuildContext context) {
    final darkMode = StoreHelper.isDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      /// Price and tag
      Row(
        children: [
          ProductContainer(
            onPressed: () {},
            showColor: true,
            padding: const EdgeInsets.symmetric(
                horizontal: StoreSizes.xs, vertical: StoreSizes.xs),
            backDarkGroundColor: StoreColors.accent.withOpacity(.8),
            backLightGroundColor: StoreColors.accent.withOpacity(.8),
            applyImageRadius: true,
            borderRadius: StoreSizes.s,
            child: Text(
              "40%",
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .apply(color: StoreColors.black),
            ),
          ),
          const SizedBox(
            width: StoreSizes.spaceBTWItems,
          ),

          /// Price
          Text(
            '\$100.4',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .apply(decoration: TextDecoration.lineThrough),
          ),
          const SizedBox(
            width: StoreSizes.spaceBTWItems,
          ),
          Text(
            '\$90.4',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
      const SizedBox(
        height: StoreSizes.spaceBTWItems / 1.5,
      ),

      ///Product title

      const ProductTitle(
        productTitle: 'MacBook Pro',
        smallSize: true,
      ),
      const SizedBox(
        width: StoreSizes.spaceBTWItems / 1.5,
      ),
      Row(
        children: [
          const ProductTitle(
            productTitle: 'Status',
          ),
          const SizedBox(width: StoreSizes.spaceBTWItems),
          Text(
            'In Stock',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
      const SizedBox(height: StoreSizes.spaceBTWItems),

      BrandTitle(smallSize: true, brandTitle: brandTitle),
      const SizedBox(
        height: StoreSizes.spaceBTWItems / 1.5,
      ),
    ]);
  }
}
