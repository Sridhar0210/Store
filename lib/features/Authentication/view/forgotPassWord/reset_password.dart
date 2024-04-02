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

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(StoreSizes.defaultSpace),
          child: Column(
            children: [
              BoardingWidget(
                image: StoreImages.verifyEmail,
                title: StoreTexts.changeYourPasswordTitle,
                imageWidth: StoreHelper.screenWidth() * .8,
                imageHeight: StoreHelper.screenHeight() * .6,
                subtitle: StoreTexts.changeYourPasswordSubTitle,
              ),
              const SizedBox(height: StoreSizes.defaultSpace),

              // done button
              SizedBox(
                  width: double.infinity,
                  child: OutLinedButton(
                    onPress: () {},
                    text: "Done",
                  )),
              const SizedBox(height: StoreSizes.defaultSpace),

              // resend email
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
