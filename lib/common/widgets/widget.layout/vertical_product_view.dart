import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:e_commerce_application/common/styles/shadows.dart';
import 'package:e_commerce_application/common/widgets/widget.container/circular_container.dart';
import 'package:flutter/material.dart';

import '../widget.images/product_thumbnail.dart';
import '../widget.text/product_title.dart';

class VerticalProductGrid extends StatelessWidget {
  const VerticalProductGrid({super.key});

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
            height: StoreHelper.screenHeight() * .28,
            width: StoreHelper.screenWidth() * .4,
            decoration: BoxDecoration(
                boxShadow: [StoreShadows.verticalGridShadows],
                borderRadius:
                    BorderRadius.circular(StoreSizes.productImageSizeRadius),
                color: containerBackGround),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // thumbnail Image, favourite button, offer

                ProductThumbNail(containerBackGround: containerBackGround),
                const SizedBox(
                  height: StoreSizes.spaceBTWItems / 4,
                ),
                // details
                Padding(
                  padding: const EdgeInsets.only(left: StoreSizes.s),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// product title
                      const ProductTitle(
                        productTitle: 'MacBook Pro',
                      ),

                      /// Brand Name
                      Row(
                        children: [
                          const ProductTitle(
                            smallSize: true,
                            productTitle: "Apple",
                          ),
                          Icon(
                            Icons.verified,
                            color: containerChild,
                            size: StoreSizes.iconXs,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),

                /// Price and Add
                Padding(
                  padding: const EdgeInsets.all(StoreSizes.s),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$100.4',
                        style: Theme.of(context).textTheme.headlineSmall,
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
          ),
        ),
      ),
    );
  }
}
