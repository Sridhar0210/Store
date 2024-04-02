import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/helpers/helper_function.dart';
import '../../../../../common/widgets/widget.container/circular_container.dart';
import '../../../../../common/widgets/widget.container/product_container.dart';
import '../../../../../common/widgets/widget.text/brand_title.dart';

class BrandBanners extends StatelessWidget {
  const BrandBanners({
    super.key,
    this.border = false,
    required this.brandTitle,
    this.isNetworkImage = false,
    this.brandSubTitle,
    this.brandImage,
  });
  final bool border;
  final bool isNetworkImage;
  final String? brandTitle;
  final String? brandSubTitle;
  final String? brandImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ProductContainer(
          height: StoreHelper.screenHeight() * .08,
          applyImageRadius: true,
          showBorder: border,
          borderRadius: StoreSizes.m,
          showColor: true,
          backLightGroundColor: StoreColors.appScreenColor,
          backDarkGroundColor: StoreColors.appScreenDarkColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: StoreSizes.spaceBTWItems,
              ),
              Flexible(
                child: CircularContainer(
                  radius: StoreSizes.iconM,
                  child: Image(
                      image: isNetworkImage
                          ? NetworkImage(brandImage!)
                          : AssetImage(brandImage!) as ImageProvider),
                ),
              ),
              const SizedBox(
                width: StoreSizes.spaceBTWItems,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BrandTitle(smallSize: true, brandTitle: brandTitle!),
                  Text(
                    brandSubTitle!,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: StoreColors.grey.withOpacity(.7)),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
