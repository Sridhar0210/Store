import 'package:e_commerce_application/features/Authentication/view/signUpPage/widget/signup_form.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/constant/sizes.dart';
import '../../../../Utils/constant/text_strings.dart';
import '../../../../Utils/helpers/helper_function.dart';
import '../../../../common/widgets/widget_Authentication/social_media_logo.dart';
import '../../../../common/widgets/widget_Authentication/store_divider.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = StoreHelper.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace),
          child: Column(
            children: [
              /// Form widget contains email,password fields signIn and create account button

              SignUpForm(dark: dark),

              const SizedBox(height: StoreSizes.spaceBTWSections),

              /// divider

              const StoreDivider(
                dividerText: StoreTexts.orSignUpWith,
              ),

              const SizedBox(height: StoreSizes.spaceBTWSections),

              /// google or facebook signIn
              const SocialMediaLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
