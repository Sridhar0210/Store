import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:e_commerce_application/common/widgets/widget.buttons/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class StoreBottomAddToCart extends StatelessWidget {
  const StoreBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = StoreHelper.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: StoreSizes.spaceBTWItems,
          vertical: StoreSizes.spaceBTWItems / 2),
      decoration: BoxDecoration(
          color: dark ? Colors.grey : StoreColors.lightGrey,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(StoreSizes.borderRadiusL),
              topRight: Radius.circular(StoreSizes.borderRadiusL))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButtonWidget(
                  height: 40, width: 40, onPress: () {}, icon: Iconsax.minus),
              const SizedBox(width: StoreSizes.spaceBTWItems / 2),
              Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .apply(color: StoreColors.black),
              ),
              const SizedBox(width: StoreSizes.spaceBTWItems / 2),
              IconButtonWidget(
                  height: 40, width: 40, onPress: () {}, icon: Iconsax.add),
            ],
          ),
          SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButtonWidget(onPress: () {}, text: 'Add Cart'))
        ],
      ),
    );
  }
}
