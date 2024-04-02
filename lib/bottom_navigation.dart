import 'package:e_commerce_application/features/management/view/cartScreen/cart_screen.dart';
import 'package:e_commerce_application/features/management/view/storeScreen/storeScreen.dart';
import 'package:e_commerce_application/features/personalization/view/settings/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Utils/constant/color.dart';
import 'features/management/view/homeScreen/records.dart';
import 'features/management/view/wish_list_screen/wish_list.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationController = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: navigationController.selectedIndex.value,
          onDestinationSelected: (index) =>
              navigationController.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_max, color: StoreColors.teal),
                label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.store, color: StoreColors.teal),
                label: "Store"),
            NavigationDestination(
                icon: Icon(Icons.favorite_border, color: StoreColors.teal),
                label: "Wishlist"),
            NavigationDestination(
                icon: Icon(Icons.shopping_bag, color: StoreColors.teal),
                label: "Cart"),
            NavigationDestination(
                icon: Icon(
                  Icons.settings_sharp,
                  color: StoreColors.teal,
                ),
                label: "Settings"),
          ],
        ),
      ),
      body: Obx(() => navigationController
          .screens[navigationController.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const RecordScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const CartScreen(),
    const SettingScreen(),
  ];
}
