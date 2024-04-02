import 'package:e_commerce_application/features/Authentication/view/loginPage/widget/login_form.dart';
import 'package:e_commerce_application/features/Authentication/view/loginPage/widget/login_header.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/constant/sizes.dart';
import '../../../../Utils/constant/text_strings.dart';
import '../../../../Utils/helpers/helper_function.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../common/widgets/widget_Authentication/social_media_logo.dart';
import '../../../../common/widgets/widget_Authentication/store_divider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = StoreHelper.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: NITHISpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo title and subtitle

              LoginHeader(dark: dark),

              const SizedBox(height: StoreSizes.defaultSpace),

              /// Form widget contains email,password fields signIn and create account button

              LoginForm(dark: dark),

              const SizedBox(height: StoreSizes.spaceBTWSections),

              /// divider

              const StoreDivider(
                dividerText: StoreTexts.orSignInWith,
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
