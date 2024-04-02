import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/constant/text_strings.dart';
import '../../../../../bottom_navigation.dart';
import '../../../../../common/widgets/widget.buttons/button_widget.dart';
import '../../forgotPassWord/forgot_password.dart';
import '../../signUpPage/sign_up.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // email field
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: StoreTexts.email,
            ),
          ),
          const SizedBox(height: StoreSizes.spaceBtwInputField),

          // password field
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: StoreTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: StoreSizes.spaceBtwInputField / 2),

          // remember me and forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(StoreTexts.rememberMe)
                ],
              ),
              // forgot password
              Row(
                children: [
                  TextButtonWidget(
                    onPress: () => Get.to(const ForgotPassWord()),
                    text: StoreTexts.forgetPasswordTitle,
                    buttonTextColor: StoreColors.buttonLightColor,
                    fontSize: StoreSizes.fontSizeSm,
                  ),
                ],
              ),
            ],
          ),

          // Sign In button
          SizedBox(
              width: double.infinity,
              child: OutLinedButton(
                onPress: () => Get.to(const BottomNavigation()),
                text: StoreTexts.signIn,
              )),
          const SizedBox(height: StoreSizes.defaultSpace),

          // Outlined Button
          SizedBox(
              width: double.infinity,
              child: OutLinedButton(
                onPress: () => Get.to(const SignUpPage()),
                text: StoreTexts.createAccount,
              ))
        ],
      ),
    );
  }
}
