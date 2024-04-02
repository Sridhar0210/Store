import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/helpers/helper_function.dart';
import '../../../../../common/widgets/widget.text/section_heading.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeading(
            onPress: () {},
            showButton: true,
            buttonTitle: 'change',
            sectionTitle: "Shipping Address"),
        Text(
          "Store",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Icon(
                Icons.phone,
                color: StoreColors.buttonLightColor.withOpacity(.5),
              ),
            ),
            const SizedBox(
              width: StoreSizes.spaceBTWSections / 2,
            ),
            Text(
              "9856287330",
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Icon(
                Icons.home,
                color: StoreColors.buttonLightColor.withOpacity(.5),
              ),
            ),
            const SizedBox(
              width: StoreSizes.spaceBTWSections / 2,
            ),
            SizedBox(
              width: StoreHelper.screenWidth() * .6,
              child: Text(
                "434 street village town city district state country",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            )
          ],
        ),
      ],
    );
  }
}
