import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/icon_strings.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:e_commerce_application/common/widgets/widget.layout/vertical_grid_view.dart';
import 'package:e_commerce_application/common/widgets/widget.text/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/widget.custom/store_tab_bar.dart';
import '../../../../common/widgets/widget.custom/text_form_field_widget.dart';
import 'Widgets/brand_banners.dart';
import 'Widgets/category_tab.dart';
import 'Widgets/store_appbar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<String> listImages;
    final backGroundColor = StoreHelper.isDarkMode(context)
        ? StoreColors.darkContainer
        : StoreColors.lightContainer;
    return Scaffold(
        appBar: const StoreAppbar(
          appbarTitle: 'Store',
        ),
        body: DefaultTabController(
            length: 5,
            child: NestedScrollView(
              headerSliverBuilder: (_, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: backGroundColor,
                    expandedHeight: StoreHelper.screenHeight() * .4,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.only(
                        left: StoreSizes.xs,
                        right: StoreSizes.xs,
                      ),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          const SizedBox(
                            height: StoreSizes.spaceBTWItems,
                          ),
                          TextFormFieldWidget(
                            searchBarIcon: Icons.search,
                            showBackGround: false,
                            showBorder: true,
                            searchBarTitle: "Search for Store",
                            onTap: () {},
                          ),
                          const SizedBox(
                            height: StoreSizes.spaceBTWItems,
                          ),
                          SectionHeading(
                            sectionTitle: "Featured Brands",
                            onPress: () {},
                          ),
                          const SizedBox(
                            height: StoreSizes.spaceBTWItems,
                          ),
                          GridLayout(
                            miniAxisExtent: StoreHelper.screenHeight() * .07,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              return const BrandBanners(
                                border: true,
                                brandSubTitle: '4556 products',
                                brandImage: StoreIcon.airplane,
                                brandTitle: 'kingFisher',
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    bottom: const StoreTabBar(
                      tabs: [
                        Tab(
                          child: Text("sports"),
                        ),
                        Tab(
                          child: Text("furniture"),
                        ),
                        Tab(
                          child: Text("electronics"),
                        ),
                        Tab(
                          child: Text("dresses"),
                        ),
                        Tab(
                          child: Text("cosmetics"),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: const TabBarView(
                children: [
                  StoreCategoryTab(),
                  StoreCategoryTab(),
                  StoreCategoryTab(),
                  StoreCategoryTab(),
                  StoreCategoryTab(),

                  /// Products
                ],
              ),
            )));
  }
}
