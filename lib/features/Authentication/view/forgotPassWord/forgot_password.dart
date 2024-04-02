import 'package:e_commerce_application/features/Authentication/view/forgotPassWord/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../Utils/constant/sizes.dart';
import '../../../../Utils/constant/text_strings.dart';
import '../../../../common/widgets/widget.buttons/button_widget.dart';
import '../loginPage/login.dart';

class ForgotPassWord extends StatelessWidget {
  const ForgotPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: StoreSizes.defaultSpace),
              child: IconButton(
                  onPressed: () => Get.to(const LoginPage()),
                  icon: const Icon(Icons.clear)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(StoreSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              StoreTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: StoreSizes.spaceBTWSections),

            Text(
              StoreTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: StoreSizes.spaceBTWSections * 2),

            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: StoreTexts.email,
              ),
            ),
            const SizedBox(height: StoreSizes.defaultSpace),

            // Summit Outlined Button
            SizedBox(
                width: double.infinity,
                child: OutLinedButton(
                  onPress: () => Get.to(const ResetPassword()),
                  text: StoreTexts.summit,
                ))
          ],
        ),
      ),
    );
  }
}
