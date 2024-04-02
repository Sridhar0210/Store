import 'package:e_commerce_application/features/Authentication/view/signUpPage/widget/term_of_use.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/constant/text_strings.dart';
import '../../../../../common/widgets/widget.buttons/button_widget.dart';
import '../verify_email.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key, required this.dark});
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text create account
          Text(StoreTexts.registerPageTitle,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: StoreSizes.spaceBTWSections),
          // Name field
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: StoreTexts.firstName,
                  ),
                ),
              ),
              const SizedBox(width: StoreSizes.spaceBtwInputField),
              Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: StoreTexts.lastName,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: StoreSizes.spaceBtwInputField / 2),

          // UserName field
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_add),
              labelText: StoreTexts.userName,
            ),
          ),
          const SizedBox(height: StoreSizes.spaceBtwInputField / 2),

          // E-Mail field
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.message),
              labelText: StoreTexts.email,
            ),
          ),
          const SizedBox(height: StoreSizes.spaceBtwInputField / 2),

          // UserName field
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: StoreTexts.phoneNo,
            ),
          ),
          const SizedBox(height: StoreSizes.spaceBtwInputField / 2),

          // Password field
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: StoreTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: StoreSizes.defaultSpace),

          // agreeTo and term use
          const TermsAndCondition(),
          // Sign In button
          const SizedBox(height: StoreSizes.defaultSpace),

          // Outlined Button
          SizedBox(
            width: double.infinity,
            child: OutLinedButton(
              onPress: () => Get.to(const VerifyEmail()),
              text: StoreTexts.createAccount,
            ),
          )
        ],
      ),
    );
  }
}
