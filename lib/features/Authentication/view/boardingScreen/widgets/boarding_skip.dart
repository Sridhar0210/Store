import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/device/device_utility.dart';
import '../../../../../common/widgets/widget.buttons/button_widget.dart';
import '../../../controller/boardingController/boarding_controller.dart';

class BoardingSkip extends StatelessWidget {
  const BoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final skipController = BoardingController.instance;

    return Positioned(
        right: StoreSizes.defaultSpace,
        top: StoreDeviceUtils.getAppBarHeight(),
        child: TextButtonWidget(
          onPress: () => skipController.skipPage(),
          text: 'Skip >>',
          buttonTextColor: StoreColors.buttonLightColor,
          fontSize: StoreSizes.fontSizeMd,
        ));
  }
}
