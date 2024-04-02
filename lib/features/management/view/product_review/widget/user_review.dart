import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/icon_strings.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../common/widgets/widget.container/circular_container.dart';
import '../../../../../common/widgets/widget.container/product_container.dart';
import '../../../../../common/widgets/widget.text/read_more_text.dart';
import '../../product_screen/widget/store_rating_bar.dart';

class UserReview extends StatelessWidget {
  const UserReview({
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
                const CircularContainer(
                    showImage: true,
                    circularImage: StoreIcon.airplane,
                    radius: StoreSizes.l),
                const SizedBox(
                  width: StoreSizes.spaceBTWSections / 2,
                ),
                Text(
                  'Vada dai',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        Row(
          children: [
            const StoreRatingBar(
              rating: 4,
            ),
            const SizedBox(
              width: StoreSizes.spaceBTWSections / 2,
            ),
            Text(
              '23-12-2024',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const SizedBox(
          height: StoreSizes.spaceBTWSections / 2,
        ),
        Text(
          'Ratings and reviews are verified by the users who used the same product as that you used',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: StoreSizes.spaceBTWSections / 2,
        ),
        ProductContainer(
          applyImageRadius: true,
          showColor: true,
          backDarkGroundColor: StoreColors.darkGrey,
          backLightGroundColor: StoreColors.lightGrey,
          borderRadius: StoreSizes.borderRadiusL,
          child: Padding(
            padding: const EdgeInsets.all(StoreSizes.defaultSpace / 4),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Store',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '23-12-2024',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: StoreSizes.spaceBTWSections / 2,
                ),
                const ReadMore(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
