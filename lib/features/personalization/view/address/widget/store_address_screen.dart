import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/helpers/helper_function.dart';
import '../../../../../common/widgets/widget.container/product_container.dart';

class StoreSingleAddress extends StatelessWidget {
  const StoreSingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = StoreHelper.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.all(StoreSizes.defaultSpace / 2),
      child: ProductContainer(
        margin: const EdgeInsets.only(bottom: StoreSizes.spaceBTWItems),
        width: double.infinity,
        showBorder: true,
        borderRadius: StoreSizes.borderRadiusL,
        applyImageRadius: true,
        backGroundColor: selectedAddress
            ? StoreColors.primary.withOpacity(.4)
            : Colors.transparent,
        child: Stack(
          children: [
            Positioned(
              right: 15,
              top: 0,
              child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                  color: selectedAddress
                      ? dark
                          ? StoreColors.appScreenColor
                          : StoreColors.appScreenDarkColor
                      : null),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Jon due ",
                  softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: StoreSizes.s,
                ),
                const Text(
                  " (983) 472 4298 ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: StoreSizes.s,
                ),
                const Text(
                  " 321,Nagar,village,city,district,state,country-000000",
                  softWrap: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
