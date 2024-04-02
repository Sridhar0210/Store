import 'package:e_commerce_application/features/management/view/orderScreen/widget/coupon_code.dart';
import 'package:e_commerce_application/features/management/view/orderScreen/widget/order_list.dart';
import 'package:e_commerce_application/features/management/view/orderScreen/widget/order_total.dart';
import 'package:e_commerce_application/features/management/view/orderScreen/widget/payment_methods.dart';
import 'package:e_commerce_application/features/management/view/orderScreen/widget/shipping_address.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/constant/sizes.dart';
import '../../../../common/widgets/widget.buttons/button_widget.dart';
import '../../../../common/widgets/widget.container/product_container.dart';
import '../../../../common/widgets/widget.images/appbar_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace),
          child: Column(
            children: [
              /// Order List
              const OrderList(),
              const SizedBox(
                height: StoreSizes.spaceBTWItems,
              ),

              /// Coupon Code
              const CouponCode(),
              const SizedBox(
                height: StoreSizes.spaceBTWSections,
              ),

              /// Product Detail Container
              const ProductContainer(
                  applyImageRadius: true,
                  borderRadius: StoreSizes.borderRadiusL,
                  showBorder: true,
                  child: Padding(
                    padding: EdgeInsets.all(StoreSizes.defaultSpace / 2),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Order Total
                          OrderTotal(),
                          SizedBox(
                            height: StoreSizes.spaceBTWSections / 2,
                          ),
                          Divider(),
                          SizedBox(
                            height: StoreSizes.spaceBTWSections / 2,
                          ),

                          /// Payment Methods
                          PaymentMethods(),

                          /// Shipping Address
                          ShippingAddress(),
                        ]),
                  )),
              const SizedBox(
                height: StoreSizes.spaceBTWSections * 3,
              ),
              ElevatedButtonWidget(onPress: () {}, text: 'Orders \$ 1545'),
            ],
          ),
        ),
      ),
    );
  }
}
