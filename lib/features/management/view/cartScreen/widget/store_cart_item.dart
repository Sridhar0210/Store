import 'package:flutter/material.dart';

import '../../../../../Utils/constant/image_string.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../common/widgets/widget.chip/choice_chip.dart';
import '../../../../../common/widgets/widget.container/product_container.dart';
import '../../../../../common/widgets/widget.text/brand_title.dart';
import '../../../../../common/widgets/widget.text/product_title.dart';

class StoreCartItems extends StatelessWidget {
  const StoreCartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProductContainer(
          showImage: true,
          productImage: StoreImages.appBarImages,
          applyImageRadius: true,
          borderRadius: StoreSizes.m,
          onPressed: () {},
          padding: const EdgeInsets.all(StoreSizes.s),
          showBorder: true,
          width: 60,
          height: 60,
        ),
        const SizedBox(
          width: StoreSizes.spaceBTWItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BrandTitle(
              brandTitle: "Apple",
              smallSize: true,
            ),
            const ProductTitle(
              productTitle: "MacBook Pro 2",
              maxLines: 1,
            ),
            Row(
              children: [
                StoreChoiceChip(
                  text: 'Green ',
                  selected: true,
                  onSelected: (value) {},
                ),
                const SizedBox(
                  width: StoreSizes.spaceBTWItems,
                ),
                StoreChoiceChip(
                  text: '7 ',
                  selected: true,
                  onSelected: (value) {},
                ),
              ],
            ),
            const SizedBox(height: StoreSizes.spaceBTWItems / 2),
          ],
        )
      ],
    );
  }
}
