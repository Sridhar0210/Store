import 'package:e_commerce_application/Utils/constant/image_string.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/features/management/view/homeScreen/widget/carousel_slider_widget.dart';
import 'package:e_commerce_application/features/management/view/homeScreen/widget/categories_list_view.dart';
import 'package:e_commerce_application/features/management/view/homeScreen/widget/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/constant/color.dart';
import '../../../../Utils/helpers/helper_function.dart';
import '../../../../common/widgets/widget.container/appbar_container.dart';
import '../../../../common/widgets/widget.custom/text_form_field_widget.dart';
import '../../../../common/widgets/widget.custom/widget.clip_path.dart';
import '../../../../common/widgets/widget.layout/vertical_grid_view.dart';
import '../../../../common/widgets/widget.layout/vertical_product_view.dart';
import '../../../../common/widgets/widget.text/section_heading.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Barr
      body: SingleChildScrollView(
        child: Column(
          children: [
            // app bar section
            ClipPath(
                clipper: StoreCustomClipWidget(),
                child: AppBarContainer(
                    appbarImage: StoreImages.appBarImages,
                    height: StoreHelper.screenHeight() * .4,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: StoreSizes.s,
                        left: StoreSizes.s,
                      ),
                      child: Column(
                        children: [
                          // Customized appbar
                          const CustomAppbar(),

                          // TextForm Field Widget
                          TextFormFieldWidget(
                            searchBarIcon: Icons.search,
                            showBorder: true,
                            showBackGround: true,
                            searchBarTitle: "Search for Product",
                            onTap: () {},
                          ),

                          const SizedBox(
                            height: StoreSizes.spaceBTWItems,
                          ),

                          // popular categories heading

                          const SectionHeading(
                            textTitleColor: StoreColors.lightContainer,
                            showButton: false,
                            sectionTitle: "Popular Categories",
                          ),

                          const SizedBox(
                            height: StoreSizes.spaceBTWItems,
                          ),
                          // categories list
                          const CategoriesListView(
                            listViewHeight: 90,
                            scrollDirection: true,
                          )
                        ],
                      ),
                    ))),

            // body section

            // Slider banner
            CarouselSliderWidget(
              sliderList: [
                StoreImages.camera,
                StoreImages.cosmetics,
                StoreImages.waterBottle,
                StoreImages.network,
                StoreImages.headphone,
              ].obs,
              viewFraction: .8,
              height: StoreHelper.screenHeight() * .25,
            ),

            //product headings
            SectionHeading(
              onPress: () {},
              showButton: true,
              sectionTitle: "Popular Products",
            ),

            // gridView layout
            GridLayout(
                miniAxisExtent: StoreHelper.screenHeight() * .28,
                itemCount: 4,
                itemBuilder: (_, index) => const VerticalProductGrid())
          ],
        ),
      ),
    );
  }
}
