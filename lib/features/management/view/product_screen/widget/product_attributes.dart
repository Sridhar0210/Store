import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/common/widgets/widget.text/product_title.dart';
import 'package:e_commerce_application/common/widgets/widget.text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/widget.chip/choice_chip.dart';
import '../../../../../common/widgets/widget.container/product_container.dart';
import '../../../../../common/widgets/widget.text/product_price_text.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Selected attributes and pricing and descriptions
        const ProductContainer(
            padding: EdgeInsets.all(StoreSizes.m),
            applyImageRadius: true,
            borderRadius: StoreSizes.l,
            showColor: true,
            backLightGroundColor: StoreColors.lightGrey,
            backDarkGroundColor: StoreColors.darkGrey,
            child: Column(
              children: [
                Row(
                  children: [
                    SectionHeading(
                      sectionTitle: "Variation",
                      showButton: false,
                    ),
                    SizedBox(width: StoreSizes.spaceBTWItems),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ProductTitle(
                              productTitle: "Price : ",
                              smallSize: true,
                            ),
                            SizedBox(width: StoreSizes.spaceBTWItems),
                            ProductPriceTitle(
                              isLineThrough: true,
                              price: '65',
                            ),
                            SizedBox(width: StoreSizes.spaceBTWItems),
                            ProductPriceTitle(
                              isLarge: true,
                              price: '52',
                            )
                          ],
                        ),
                        SizedBox(
                          width: StoreSizes.spaceBTWItems / 1.5,
                        ),
                        Row(
                          children: [
                            ProductTitle(
                              productTitle: 'Status:',
                              smallSize: true,
                            ),
                            SizedBox(width: StoreSizes.spaceBTWItems),
                            ProductTitle(
                              productTitle: 'In Stock',
                              smallSize: true,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                ProductTitle(
                  productTitle:
                      "This line would be show the description of the product and it goes to the maximum lines of 4 and above",
                  maxLines: 2,
                  smallSize: true,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )),
        const SizedBox(height: StoreSizes.spaceBTWItems),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(
              sectionTitle: "Colors",
            ),
            const SizedBox(height: StoreSizes.spaceBTWItems / 2),
            Wrap(
              spacing: 8,
              children: [
                StoreChoiceChip(
                  text: 'Green ',
                  selected: true,
                  onSelected: (value) {},
                ),
                StoreChoiceChip(
                  text: 'Yellow ',
                  selected: false,
                  onSelected: (value) {},
                ),
                StoreChoiceChip(
                  text: 'Red ',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            const SectionHeading(
              sectionTitle: "Size",
            ),
            const SizedBox(height: StoreSizes.spaceBTWItems / 2),
            Wrap(
              spacing: 8,
              children: [
                StoreChoiceChip(
                  text: '7 ',
                  selected: true,
                  onSelected: (value) {},
                ),
                StoreChoiceChip(
                  text: '8 ',
                  selected: false,
                  onSelected: (value) {},
                ),
                StoreChoiceChip(
                  text: '9 ',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),

        ///
      ],
    );
  }
}
