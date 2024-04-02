import 'package:e_commerce_application/Utils/constant/image_string.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/common/widgets/widget.buttons/button_widget.dart';
import 'package:e_commerce_application/features/management/view/product_review/product_review_screen.dart';
import 'package:e_commerce_application/features/management/view/product_screen/widget/product_attributes.dart';
import 'package:e_commerce_application/features/management/view/product_screen/widget/product_data.dart';
import 'package:e_commerce_application/features/management/view/product_screen/widget/product_detail_appbar.dart';
import 'package:e_commerce_application/features/management/view/product_screen/widget/ratting_and_share.dart';
import 'package:e_commerce_application/features/management/view/product_screen/widget/store_bottom_add_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/widget.text/read_more_text.dart';
import '../../../../common/widgets/widget.text/section_heading.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const StoreBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const ProductDetailsAppBar(
                displayListImage: StoreImages.appleLaptop,
                displayImage: StoreImages.acerLaptop),

            /// Product details
            Padding(
              padding: const EdgeInsets.all(StoreSizes.defaultSpace / 2),
              child: Column(children: [
                /// share and ratting
                const ShareAndRatting(),

                /// price,title,stock and brand
                const ProductData(
                  brandTitle: 'Apple',
                ),

                /// Attributes
                const ProductAttributes(),

                /// CheckOut Button
                const SizedBox(
                  height: StoreSizes.spaceBTWSections,
                ),
                ElevatedButtonWidget(onPress: () {}, text: 'Check'),
                const SizedBox(
                  height: StoreSizes.spaceBTWSections,
                ),

                /// Description
                const SectionHeading(
                  showButton: false,
                  sectionTitle: "Description",
                ),
                const SizedBox(
                  height: StoreSizes.spaceBTWSections / 2,
                ),
                const ReadMore(),

                /// Reviews

                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SectionHeading(
                      showButton: false,
                      sectionTitle: "Reviews",
                    ),
                    IconButton(
                        onPressed: () => Get.to(const ProductReviewScreen()),
                        icon: const Icon(Iconsax.arrow_right_3, size: 18)),
                  ],
                ),
                const SizedBox(
                  height: StoreSizes.spaceBTWSections / 2,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
