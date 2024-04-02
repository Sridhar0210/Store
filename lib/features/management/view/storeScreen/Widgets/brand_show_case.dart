import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/image_string.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/helpers/helper_function.dart';
import '../../../../../common/widgets/widget.container/product_container.dart';
import 'brand_banners.dart';

class BrandShowCases extends StatelessWidget {
  const BrandShowCases({
    super.key,
    this.isNetworkImage = false,
    this.image,
    required this.listImages,
  });
  final bool isNetworkImage;
  final String? image;
  final List<String> listImages;

  @override
  Widget build(BuildContext context) {
    return ProductContainer(
        applyImageRadius: true,
        borderRadius: StoreSizes.m,
        // padding: const EdgeInsets.all(StoreSizes.m),
        showBorder: true,
        margin: const EdgeInsets.only(bottom: StoreSizes.spaceBTWItems),
        child: Column(children: [
          const BrandBanners(
            brandSubTitle: 'mac book pro',
            brandTitle: 'Apple ',
            brandImage: StoreImages.appleLaptop,
          ),
          const SizedBox(
            height: StoreSizes.spaceBTWItems,
          ),
          Row(
              children: listImages
                  .map((image) => brandShowCaseImage(image, context))
                  .toList()),
        ]));
  }

  Widget brandShowCaseImage(String image, context) {
    final backGroundColor = StoreHelper.isDarkMode(context)
        ? StoreColors.darkGreyContainer
        : StoreColors.lightGrey;
    return Expanded(
      child: ProductContainer(
        applyImageRadius: true,
        borderRadius: StoreSizes.m,
        padding: const EdgeInsets.all(StoreSizes.s),
        margin: const EdgeInsets.only(right: StoreSizes.s),
        height: 100,
        backDarkGroundColor: backGroundColor,
        child: Image(
            fit: BoxFit.cover,
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider),
      ),
    );
  }
}
