import 'package:e_commerce_application/features/Authentication/view/boardingScreen/widgets/boarding_dot_indicator.dart';
import 'package:e_commerce_application/features/Authentication/view/boardingScreen/widgets/boarding_next_button.dart';
import 'package:e_commerce_application/features/Authentication/view/boardingScreen/widgets/boarding_screen.dart';
import 'package:e_commerce_application/features/Authentication/view/boardingScreen/widgets/boarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/constant/image_string.dart';
import '../../../../Utils/constant/text_strings.dart';
import '../../../../Utils/helpers/helper_function.dart';
import '../../controller/boardingController/boarding_controller.dart';

class Boarding extends StatelessWidget {
  Boarding({super.key});
  final controller = Get.put(BoardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              BoardingWidget(
                image: StoreImages.boardingImage1,
                title: StoreTexts.boardingTitle_1,
                subtitle: StoreTexts.boardingSubTitle_1,
                imageHeight: StoreHelper.screenWidth() * .6,
                imageWidth: StoreHelper.screenHeight() * .8,
              ),
              BoardingWidget(
                image: StoreImages.boardingImage2,
                title: StoreTexts.boardingTitle_2,
                subtitle: StoreTexts.boardingSubTitle_2,
                imageHeight: StoreHelper.screenWidth() * .6,
                imageWidth: StoreHelper.screenHeight() * .8,
              ),
              BoardingWidget(
                image: StoreImages.boardingImage3,
                title: StoreTexts.boardingTitle_3,
                subtitle: StoreTexts.boardingSubTitle_3,
                imageHeight: StoreHelper.screenWidth() * .6,
                imageWidth: StoreHelper.screenHeight() * .8,
              ),
            ],
          ),

          /// Skip Button
          const BoardingSkip(),

          /// Smooth Page indicator
          const BoardingDotIndicator(),

          /// Circular Button

          const BoardingNextButton()
        ],
      ),
    );
  }
}
