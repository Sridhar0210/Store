import 'package:flutter/material.dart';

import '../../../../../Utils/constant/image_string.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../common/widgets/widget.text/section_heading.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({
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
            sectionTitle: "Payment Methods"),
        const SizedBox(
          height: StoreSizes.spaceBTWSections / 2,
        ),
        Row(
          children: [
            const SizedBox(
              height: 60,
              width: 60,
              child: Image(image: AssetImage(StoreImages.googlePay)),
            ),
            const SizedBox(
              width: StoreSizes.spaceBTWSections / 2,
            ),
            Text(
              "G-Pay",
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      ],
    );
  }
}
