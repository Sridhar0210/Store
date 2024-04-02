import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../Utils/constant/image_string.dart';
import '../../../../../Utils/helpers/helper_function.dart';
import '../../../../../common/widgets/widget.layout/vertical_grid_view.dart';
import '../../../../../common/widgets/widget.layout/vertical_product_view.dart';
import '../../../../../common/widgets/widget.text/section_heading.dart';
import 'brand_show_case.dart';

class StoreCategoryTab extends StatelessWidget {
  const StoreCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(StoreSizes.xs),
        child: Column(children: [
          /// Brands
          const BrandShowCases(
            listImages: [
              StoreImages.adidas,
              StoreImages.samsungLaptop,
              StoreImages.samsungUltra
            ],
          ),

          /// Heading Section
          SectionHeading(
            onPress: () {},
            showButton: true,
            sectionTitle: "You might like Products",
          ),

          // gridView layout
          GridLayout(
              miniAxisExtent: StoreHelper.screenHeight() * .28,
              itemCount: 6,
              itemBuilder: (_, index) => const VerticalProductGrid())
        ]),
      ),
    );
  }
}
