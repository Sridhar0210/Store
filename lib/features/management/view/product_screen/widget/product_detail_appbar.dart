import 'package:flutter/material.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../Utils/helpers/helper_function.dart';
import '../../../../../common/widgets/widget.buttons/button_widget.dart';
import '../../../../../common/widgets/widget.container/appbar_container.dart';
import '../../../../../common/widgets/widget.container/product_container.dart';
import '../../../../../common/widgets/widget.custom/widget.clip_path.dart';
import '../../../../../common/widgets/widget.images/appbar_widget.dart';

class ProductDetailsAppBar extends StatelessWidget {
  const ProductDetailsAppBar({
    super.key,
    this.isNetworkImage = false,
    required this.displayImage,
    this.displayListImage,
  });

  final bool isNetworkImage;
  final String? displayImage, displayListImage;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: StoreCustomClipWidget(),
        child: AppBarContainer(
            child: Container(
                color: StoreHelper.isDarkMode(context)
                    ? StoreColors.darkGrey
                    : StoreColors.lightGrey,
                child: Stack(children: [
                  /// Main Display Image
                  SizedBox(
                      height: StoreHelper.screenHeight() * .4,
                      width: StoreHelper.screenWidth(),
                      child: Padding(
                        padding: const EdgeInsets.all(
                            StoreSizes.productImageSizeRadius),
                        child: Center(
                          child: Image(
                            image: isNetworkImage
                                ? NetworkImage(displayListImage!)
                                : AssetImage(displayListImage!)
                                    as ImageProvider,
                          ),
                        ),
                      )),

                  Positioned(
                    bottom: 30,
                    left: StoreSizes.defaultSpace,
                    child: SizedBox(
                      height: 80,
                      width: StoreHelper.screenWidth(),
                      child: ListView.separated(
                          itemCount: 10,
                          physics: const AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => ProductContainer(
                                applyImageRadius: true,
                                borderRadius: StoreSizes.m,
                                onPressed: () {},
                                padding: const EdgeInsets.all(StoreSizes.s),
                                showBorder: true,
                                width: 80,
                                backDarkGroundColor:
                                    StoreHelper.isDarkMode(context)
                                        ? StoreColors.appScreenDarkColor
                                        : StoreColors.appScreenColor,
                                child: Image(
                                  image: isNetworkImage
                                      ? NetworkImage(displayImage!)
                                      : AssetImage(displayImage!)
                                          as ImageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                          separatorBuilder: (_, __) => const SizedBox(
                                width: StoreSizes.spaceBTWItems,
                              )),
                    ),
                  ),

                  AppBarWidget(
                    showBackArrow: true,
                    actions: [
                      IconButtonWidget(
                          iconSize: StoreSizes.xl,
                          showBackGroundColor: false,
                          showIconColor: false,
                          iconColors: Colors.red,
                          onPress: () {},
                          icon: Icons.favorite)
                    ],
                  )
                ]))));
  }
}
