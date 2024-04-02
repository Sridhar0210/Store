import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/common/widgets/widget.buttons/button_widget.dart';
import 'package:e_commerce_application/common/widgets/widget.container/product_container.dart';
import 'package:e_commerce_application/features/management/view/cartScreen/widget/store_cart_item.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/helpers/helper_function.dart';
import '../../../../common/widgets/widget.images/appbar_widget.dart';
import '../../../../common/widgets/widget.text/product_price_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace),
          child: ListView.separated(
              itemCount: 3,
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => ProductContainer(
                  padding: const EdgeInsets.all(StoreSizes.defaultSpace / 2),
                  applyImageRadius: true,
                  showColor: true,
                  borderRadius: StoreSizes.borderRadiusL,
                  backLightGroundColor: StoreColors.lightGrey,
                  backDarkGroundColor: StoreColors.lightBlack,
                  child: Column(
                    children: [
                      const StoreCartItems(),
                      const SizedBox(
                        height: StoreSizes.spaceBTWItems,
                      ),
                      SizedBox(
                        width: StoreHelper.screenWidth(),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CartButton(),
                            ProductPriceTitle(price: '563')
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: StoreSizes.spaceBTWItems,
                      ),
                    ],
                  )),
              separatorBuilder: (_, __) => const SizedBox(
                    width: StoreSizes.spaceBTWItems,
                    height: StoreSizes.spaceBTWItems,
                  )),
        ),
      ),
      bottomNavigationBar:
          ElevatedButtonWidget(onPress: () {}, text: 'Your Orders \$ 563'),
    );
  }
}
