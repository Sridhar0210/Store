import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Utils/constant/color.dart';
import '../../../../../Utils/constant/sizes.dart';
import '../../../../../common/widgets/widget.container/circular_container.dart';
import '../../../../../common/widgets/widget.container/slider_container.dart';
import '../../../controller/slider_controller.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    super.key,
    required this.sliderList,
    required this.viewFraction,
    required this.height,
  });
  final RxList<String> sliderList;
  final double viewFraction, height;

  @override
  Widget build(BuildContext context) {
    final carouselSliderController = Get.put(CarouselSliderController());
    return Column(
      children: [
        CarouselSlider(
            items: sliderList
                .map((url) => StoreBannerImages(
                    fit: BoxFit.cover,
                    applyImageRadius: true,
                    borderRadius: StoreSizes.borderRadiusXl,
                    imageUrl: url))
                .toList(),
            options: CarouselOptions(
                height: height,
                onPageChanged: (index, _) =>
                    carouselSliderController.sliderUpdateIndicator(index),
                viewportFraction: viewFraction)),
        const SizedBox(
          height: StoreSizes.spaceBTWItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < sliderList.length; i++)
                CircularContainer(
                  color: carouselSliderController.sliderIndex.value == i
                      ? StoreColors.primary
                      : StoreColors.grey,
                  borderRadius: StoreSizes.borderRadiusXl,
                  height: 4,
                  radius: 10,
                  margin: const EdgeInsets.only(right: 10),
                  showColor: true,
                )
            ],
          ),
        )
      ],
    );
  }
}
