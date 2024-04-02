import 'package:flutter/material.dart';

import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/device/device_utility.dart';
import '../../../../../common/widgets/widget.buttons/button_widget.dart';
import '../../../controller/boardingController/boarding_controller.dart';

class BoardingNextButton extends StatelessWidget {
  const BoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final nextController = BoardingController.instance;

    return Positioned(
        right: StoreSizes.defaultSpace,
        bottom: StoreDeviceUtils.getBottomNavigationBarHeight(),
        child: IconButtonWidget(
          onPress: () => nextController.nextPage(),
          icon: Icons.arrow_forward_ios_rounded,
          shape: const CircleBorder(),
        ));
  }
}
