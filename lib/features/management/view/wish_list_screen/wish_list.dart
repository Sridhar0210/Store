import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:e_commerce_application/common/widgets/widget.images/appbar_widget.dart';
import 'package:e_commerce_application/common/widgets/widget.layout/vertical_grid_view.dart';
import 'package:e_commerce_application/common/widgets/widget.layout/vertical_product_view.dart';
import 'package:e_commerce_application/features/management/view/homeScreen/records.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: StoreSizes.defaultSpace),
            child: GestureDetector(
              onTap: () => Get.to(const RecordScreen()),
              child: Icon(
                Icons.add,
                color: StoreHelper.isDarkMode(context)
                    ? StoreColors.lightGrey
                    : StoreColors.darkGrey,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace),
          child: GridLayout(
              miniAxisExtent: StoreHelper.screenHeight() * .28,
              itemCount: 8,
              itemBuilder: (_, index) => const VerticalProductGrid()),
        ),
      ),
    );
  }
}
