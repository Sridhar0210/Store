import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class StoreDeviceUtils {
  // hide keyboard
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  // setStatusBarColor
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  // Landscape Orientation
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInserts = View.of(context).viewInsets;
    return viewInserts.bottom == 0;
  }

  // Portrait Orientation
  static bool isPortraitOrientation(BuildContext context) {
    final viewInserts = View.of(context).viewInsets;
    return viewInserts.bottom != 0;
  }

  // FullScreen
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  // Screen Height
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Screen Width
  static double getScreenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  // Screen Pixel Ratio
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  // Status Bar Height
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  //  Bottom NavigationBar Height
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  //  AppBar Height
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  // key board height
  static double getKeyboardHeight() {
    final viewInserts = View.of(Get.context!).viewInsets;
    return viewInserts.bottom;
  }

  // visibility of keyboard
  static Future<bool> isKeyBoardVisible() async {
    final viewInserts = View.of(Get.context!).viewInsets;
    return viewInserts.bottom > 0;
  }

  // physical device
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  // vibrate
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  //preferred orientations
  static Future<void> setPreferredOrientation(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  //hideStatusBar
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  //showStatusBar
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  // internet Connection
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  //Ios device

  static bool isIos() {
    return Platform.isIOS;
  }

// Android Device
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  // Url launcher

  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw "could not launch $url";
    }
  }
}
