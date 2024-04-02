import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../Utils/constant/image_string.dart';
import '../../../../Utils/constant/sizes.dart';
import '../../../../Utils/constant/text_strings.dart';
import '../../../../Utils/helpers/helper_function.dart';
import '../../../../common/widgets/widget.buttons/button_widget.dart';
import '../boardingScreen/widgets/boarding_screen.dart';
import '../loginPage/login.dart';

class AccountVerified extends StatelessWidget {
  const AccountVerified({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace),
          child: Column(
            children: [
              BoardingWidget(
                image: StoreImages.verifiedEmail,
                title: StoreTexts.yourAccountCreatedTitle,
                subtitle: StoreTexts.yourAccountCreatedSubTitle,
                imageHeight: StoreHelper.screenHeight() * .6,
                imageWidth: StoreHelper.screenWidth() * .8,
              ),
              const SizedBox(height: StoreSizes.spaceBTWSections),
              const SizedBox(height: StoreSizes.spaceBtwInputField),
              SizedBox(
                  width: double.infinity,
                  child: OutLinedButton(
                    onPress: () => Get.offAll(() => const LoginPage()),
                    text: StoreTexts.nContinue,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
