import 'package:e_commerce_application/features/Authentication/view/signUpPage/verified_account.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/constant/color.dart';
import '../../../../Utils/constant/image_string.dart';
import '../../../../Utils/constant/sizes.dart';
import '../../../../Utils/constant/text_strings.dart';
import '../../../../Utils/helpers/helper_function.dart';
import '../../../../common/widgets/widget.buttons/button_widget.dart';
import '../boardingScreen/widgets/boarding_screen.dart';
import '../loginPage/login.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.to(() => const LoginPage()),
              icon: const Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace),
          child: Column(
            children: [
              BoardingWidget(
                image: StoreImages.verifyEmail,
                title: StoreTexts.confirmEmail,
                subtitle: StoreTexts.confirmEmailSubTitle,
                imageHeight: StoreHelper.screenHeight() * .6,
                imageWidth: StoreHelper.screenWidth() * .8,
              ),
              const SizedBox(height: StoreSizes.s),
              Text(
                "Sridhar@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: StoreSizes.s),
              SizedBox(
                  width: double.infinity,
                  child: OutLinedButton(
                    onPress: () => Get.to(const AccountVerified()),
                    text: StoreTexts.nContinue,
                  )),
              const SizedBox(height: StoreSizes.s),
              const TextButtonWidget(
                onPress: null,
                text: StoreTexts.reSendEmail,
                buttonTextColor: StoreColors.buttonLightColor,
                fontSize: StoreSizes.fontSizeMd,
              )
            ],
          ),
        ),
      ),
    );
  }
}
