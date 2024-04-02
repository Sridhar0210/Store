import 'package:e_commerce_application/features/management/view/orderPlacedScreen/widget/order_and_shipping_detail.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/constant/color.dart';
import '../../../../Utils/constant/sizes.dart';
import '../../../../common/widgets/widget.container/product_container.dart';
import '../../../../common/widgets/widget.images/appbar_widget.dart';

class PlacedOrder extends StatelessWidget {
  const PlacedOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        showBackArrow: true,
        title: Text(
          "My Orders",
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
              itemBuilder: (context, index) => const ProductContainer(
                  padding: EdgeInsets.all(StoreSizes.defaultSpace / 2),
                  applyImageRadius: true,
                  showColor: true,
                  borderRadius: StoreSizes.borderRadiusL,
                  backLightGroundColor: StoreColors.lightGrey,
                  backDarkGroundColor: StoreColors.lightBlack,
                  child: OrderAndShipping()),
              separatorBuilder: (_, __) => const SizedBox(
                    width: StoreSizes.spaceBTWItems,
                    height: StoreSizes.spaceBTWItems,
                  )),
        ),
      ),
    );
  }
}
