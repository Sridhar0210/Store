import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:e_commerce_application/common/styles/shadows.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../widget.container/circular_container.dart';
import '../widget.images/product_thumbnail.dart';
import '../widget.text/product_title.dart';

class HorizontalProduct extends StatelessWidget {
  const HorizontalProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = StoreHelper.isDarkMode(context);

    final containerBackGround =
        dark ? StoreColors.darkGreyContainer : StoreColors.lightGreyContainer;
    final containerChild =
        dark ? StoreColors.lightGreyContainer : StoreColors.darkGreyContainer;

    return Scaffold(
        body: Center(
            child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: StoreHelper.screenHeight() * .16,
                  width: StoreHelper.screenWidth() * .75,
                  decoration: BoxDecoration(
                      boxShadow: [StoreShadows.horizontalGridShadows],
                      borderRadius: BorderRadius.circular(
                          StoreSizes.productImageSizeRadius),
                      color: containerBackGround),
                  child: Row(
                    children: [
                      ProductThumbNail(
                          containerBackGround: containerBackGround),
                      Padding(
                        padding: const EdgeInsets.all(StoreSizes.s),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// product title
                            const ProductTitle(
                              productTitle: 'MacBook Pro',
                            ),
                            const SizedBox(
                              height: StoreSizes.defaultSpace / 2,
                            ),

                            /// Brand Name
                            Row(
                              children: [
                                const ProductTitle(
                                  smallSize: true,
                                  productTitle: "Apple",
                                ),
                                Icon(
                                  Iconsax.verify5,
                                  color: containerChild,
                                  size: StoreSizes.iconXs,
                                )
                              ],
                            ),
                            const Spacer(),

                            /// Price and Add
                            SizedBox(
                              width: StoreHelper.screenWidth() * .3,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$100.4',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                  ),
                                  CircularContainer(
                                    backGroundColor: containerChild,
                                    borderRadius: StoreSizes.borderRadiusL,
                                    radius: StoreSizes.iconXs,
                                    child: Icon(
                                      Icons.add,
                                      color: containerBackGround,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))));
  }
}
