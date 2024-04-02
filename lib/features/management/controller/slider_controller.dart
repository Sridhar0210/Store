import 'package:get/get.dart';

class CarouselSliderController extends GetxController {
  static CarouselSliderController get instance => Get.find();

  final sliderIndex = 0.obs;

  void sliderUpdateIndicator(index) {
    sliderIndex.value = index;
  }
}
