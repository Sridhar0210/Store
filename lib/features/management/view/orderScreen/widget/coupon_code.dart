import 'package:flutter/material.dart';

import '../../../../../Utils/constant/sizes.dart';
import '../../../../../common/widgets/widget.buttons/button_widget.dart';
import '../../../../../common/widgets/widget.container/product_container.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProductContainer(
      height: 80,
      padding: const EdgeInsets.all(StoreSizes.defaultSpace / 2),
      applyImageRadius: true,
      borderRadius: StoreSizes.borderRadiusL,
      showBorder: true,
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Apply the Promo Code here'),
            ),
          ),
          Flexible(child: ElevatedButtonWidget(onPress: () {}, text: 'Apply'))
        ],
      ),
    );
  }
}
