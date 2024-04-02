import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/helpers/helper_function.dart';

class OverallRatting extends StatelessWidget {
  const OverallRatting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '4.8',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const Column(
          children: [
            RatingProgressIndicator(
              text: '5',
              value: .9,
            ),
            RatingProgressIndicator(
              text: '4',
              value: .7,
            ),
            RatingProgressIndicator(
              text: '3',
              value: .5,
            ),
            RatingProgressIndicator(
              text: '2',
              value: .3,
            ),
            RatingProgressIndicator(
              text: '1',
              value: .2,
            ),
          ],
        )
      ],
    );
  }
}

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          width: StoreSizes.spaceBTWSections / 2,
        ),
        SizedBox(
          width: StoreHelper.screenWidth() * .5,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 10,
            backgroundColor: StoreColors.grey,
            borderRadius: BorderRadius.circular(StoreSizes.borderRadiusMd),
            valueColor: const AlwaysStoppedAnimation(StoreColors.primary),
          ),
        )
      ],
    );
  }
}
