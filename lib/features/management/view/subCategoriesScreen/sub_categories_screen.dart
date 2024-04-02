import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:e_commerce_application/common/widgets/widget.text/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/constant/image_string.dart';
import '../../../../Utils/constant/sizes.dart';
import '../../../../common/widgets/widget.images/appbar_widget.dart';
import '../../../../common/widgets/widget.layout/horizontal_product_view.dart';
import '../homeScreen/widget/carousel_slider_widget.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        showBackArrow: true,
        title: Text(
          "Sub Categories",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace / 2),
          child: Column(
            children: [
              const SizedBox(
                height: StoreSizes.spaceBTWItems,
              ),
              CarouselSliderWidget(
                sliderList: [
                  StoreImages.camera,
                  StoreImages.cosmetics,
                  StoreImages.waterBottle,
                  StoreImages.network,
                  StoreImages.headphone,
                ].obs,
                viewFraction: 1,
                height: StoreHelper.screenHeight() * .25,
              ),
              const SectionHeading(
                  showButton: true, sectionTitle: 'Sub categories'),
              const SizedBox(
                height: StoreSizes.spaceBTWItems,
              ),
              SizedBox(
                height: StoreHelper.screenHeight() * .18,
                child: ListView.separated(
                    itemCount: 2,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => SizedBox(
                        height: StoreHelper.screenHeight() * .18,
                        width: StoreHelper.screenWidth() * .8,
                        child: const HorizontalProduct()),
                    separatorBuilder: (_, __) => const SizedBox(
                          width: StoreSizes.spaceBTWItems,
                          height: StoreSizes.spaceBTWItems,
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
