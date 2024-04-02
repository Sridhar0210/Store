import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../Utils/constant/text_strings.dart';
import '../../../../common/widgets/widget.buttons/button_widget.dart';
import '../../../../common/widgets/widget.images/appbar_widget.dart';
import '../../../Authentication/view/signUpPage/verify_email.dart';

class NewAddressScreen extends StatelessWidget {
  const NewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        showBackArrow: true,
        title: Text(
          "Add New Address",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user_add),
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(height: StoreSizes.spaceBtwInputField),

                TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.call),
                    labelText: StoreTexts.phoneNo,
                  ),
                ),
                const SizedBox(height: StoreSizes.spaceBtwInputField),

                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'Street',
                        ),
                      ),
                    ),
                    const SizedBox(width: StoreSizes.spaceBtwInputField),
                    Flexible(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: 'Pin-Code',
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: StoreSizes.spaceBtwInputField),

                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: 'City',
                        ),
                      ),
                    ),
                    const SizedBox(width: StoreSizes.spaceBtwInputField),
                    Flexible(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.user),
                          labelText: 'State',
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: StoreSizes.spaceBtwInputField),

                TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.global_edit),
                    labelText: 'Country',
                  ),
                ),
                const SizedBox(height: StoreSizes.spaceBtwInputField / 2),

                // Sign In button
                const SizedBox(height: StoreSizes.defaultSpace),

                // Outlined Button
                SizedBox(
                  width: double.infinity,
                  child: OutLinedButton(
                    onPress: () => Get.to(const VerifyEmail()),
                    text: 'Save Address',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
