import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../common/widgets/widget.container/product_container.dart';
import '../../cartScreen/widget/store_cart_item.dart';

class OrderList extends StatelessWidget {
  const OrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 2,
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
            child: StoreCartItems()),
        separatorBuilder: (_, __) => const SizedBox(
              width: StoreSizes.spaceBTWItems,
              height: StoreSizes.spaceBTWItems,
            ));
  }
}
