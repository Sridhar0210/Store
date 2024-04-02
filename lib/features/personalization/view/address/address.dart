import 'package:e_commerce_application/common/widgets/widget.buttons/button_widget.dart';
import 'package:e_commerce_application/common/widgets/widget.images/appbar_widget.dart';
import 'package:e_commerce_application/features/personalization/view/address/widget/store_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'new_address.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButtonWidget(
        onPress: () => Get.to(const NewAddressScreen()),
        icon: Icons.add,
        toolTip: 'New Address',
      ),
      appBar: AppBarWidget(
        showBackArrow: true,
        title: Text(
          "Address",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            StoreSingleAddress(
              selectedAddress: true,
            ),
            StoreSingleAddress(
              selectedAddress: true,
            ),
          ],
        ),
      ),
    );
  }
}
