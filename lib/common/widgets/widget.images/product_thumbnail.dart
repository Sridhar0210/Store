import 'package:flutter/material.dart';

import '../../../Utils/constant/color.dart';
import '../../../Utils/constant/image_string.dart';
import '../../../Utils/constant/sizes.dart';
import '../../../Utils/helpers/helper_function.dart';
import '../widget.container/product_container.dart';
import '../widget.container/slider_container.dart';

class ProductThumbNail extends StatelessWidget {
  const ProductThumbNail({
    super.key,
    required this.containerBackGround,
  });

  final Color containerBackGround;

  @override
  Widget build(BuildContext context) {
    return ProductContainer(
      onPressed: () {},
      width: StoreHelper.screenWidth() * .4,
      backDarkGroundColor: containerBackGround,
      applyImageRadius: true,
      borderRadius: StoreSizes.m,
      child: Stack(
        children: [
          // thumbnail Image
          StoreBannerImages(
            backGroundColor: containerBackGround,
            fit: BoxFit.cover,
            height: StoreHelper.screenHeight() * .16,
            imageUrl: StoreImages.appleLaptop,
            applyImageRadius: true,
            borderRadius: StoreSizes.m,
          ),

          //favourite button,
          Positioned(
            top: 10,
            left: 10,
            child: ProductContainer(
              onPressed: () {},
              padding: const EdgeInsets.symmetric(
                  horizontal: StoreSizes.xs, vertical: StoreSizes.xs),
              backGroundColor: StoreColors.accent.withOpacity(.8),
              applyImageRadius: true,
              borderRadius: StoreSizes.s,
              child: Text(
                "40%",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .apply(color: StoreColors.black),
              ),
            ),
          ),

          // favourite
          Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )))
        ],
      ),
    );
  }
}
