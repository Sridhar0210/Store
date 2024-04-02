import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/icon_strings.dart';
import 'package:e_commerce_application/Utils/constant/image_string.dart';
import 'package:e_commerce_application/Utils/constant/sizes.dart';
import 'package:e_commerce_application/common/widgets/widget.buttons/button_widget.dart';
import 'package:e_commerce_application/common/widgets/widget.container/appbar_container.dart';
import 'package:e_commerce_application/common/widgets/widget.custom/widget.clip_path.dart';
import 'package:e_commerce_application/common/widgets/widget.images/appbar_widget.dart';
import 'package:e_commerce_application/common/widgets/widget.text/section_heading.dart';
import 'package:e_commerce_application/common/widgets/widget.tile/setting_menu_tile.dart';
import 'package:e_commerce_application/features/personalization/view/address/address.dart';
import 'package:e_commerce_application/features/personalization/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/widget.tile/user_profile_tile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Section
            ClipPath(
              clipper: StoreCustomClipWidget(),
              child: AppBarContainer(
                  appbarImage: StoreImages.appBarImages,
                  child: Column(
                    children: [
                      AppBarWidget(
                        title: Text(
                          "Account",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: StoreColors.white),
                        ),
                      ),
                      StoreUserProfileTile(
                        userImage: StoreIcon.entertainment,
                        userName: 'Sridhar',
                        email: 'sridhar@gmail.com',
                        onPressed: () => Get.to(const ProfileScreen()),
                      ),
                      const SizedBox(
                        height: StoreSizes.spaceBTWSections,
                      ),
                    ],
                  )),
            ),

            /// body Section

            Column(
              children: [
                const SectionHeading(
                  sectionTitle: "Account Settings",
                  showButton: false,
                ),
                const SizedBox(
                  height: StoreSizes.spaceBTWSections,
                ),
                StoreSettingMenuTile(
                  onPress: () => Get.to(const AddressScreen()),
                  tileTrailingIcon: Iconsax.edit,
                  tileIcon: Iconsax.safe_home,
                  tileTitle: 'My Address',
                  tileSubTitle: 'Set your delivery address',
                ),
                const StoreSettingMenuTile(
                  tileTrailingIcon: Iconsax.edit,
                  tileIcon: Iconsax.shopping_cart,
                  tileTitle: 'My Cart',
                  tileSubTitle: 'Change and access your choice',
                ),
                const StoreSettingMenuTile(
                  tileTrailingIcon: Iconsax.edit,
                  tileIcon: Iconsax.bag_tick,
                  tileTitle: 'My Orders',
                  tileSubTitle: 'Your Order Details',
                ),
                const StoreSettingMenuTile(
                  tileTrailingIcon: Iconsax.edit,
                  tileIcon: Iconsax.bank,
                  tileTitle: 'My Bank Account',
                  tileSubTitle: 'Transaction details and registration',
                ),
                const StoreSettingMenuTile(
                  tileTrailingIcon: Iconsax.edit,
                  tileIcon: Iconsax.discount_circle,
                  tileTitle: 'My Coupons',
                  tileSubTitle: 'Offers and Coupon Details',
                ),
                const StoreSettingMenuTile(
                  tileTrailingIcon: Iconsax.edit,
                  tileIcon: Iconsax.notification,
                  tileTitle: 'Alerts & Notifications',
                  tileSubTitle: 'Set Notification message',
                ),
                const StoreSettingMenuTile(
                  tileTrailingIcon: Iconsax.edit,
                  tileIcon: Iconsax.notification,
                  tileTitle: 'Account & Privacy',
                  tileSubTitle: 'Manage the data and connections',
                ),
                const SizedBox(
                  height: StoreSizes.spaceBTWSections,
                ),
                const SectionHeading(
                  sectionTitle: "App Settings",
                  showButton: false,
                ),
                const SizedBox(
                  height: StoreSizes.spaceBTWSections,
                ),
              ],
            ),
            const StoreSettingMenuTile(
              tileTrailingIcon: Iconsax.edit,
              tileIcon: Iconsax.document_upload,
              tileTitle: 'App and Data settings ',
              tileSubTitle: 'Upload the data to your cloud firebase',
            ),
            StoreSettingMenuTile(
              isIcon: false,
              trailing: Switch(value: true, onChanged: (value) {}),
              tileIcon: Iconsax.location,
              tileTitle: 'Location Access',
              tileSubTitle: 'To Enhance higher delivery chance ',
            ),
            StoreSettingMenuTile(
              isIcon: false,
              trailing: Switch(value: false, onChanged: (value) {}),
              tileIcon: Iconsax.security,
              tileTitle: 'Safe mode',
              tileSubTitle: 'Searching the product of all kind of ages',
            ),
            ElevatedButtonWidget(
                shape: const RoundedRectangleBorder(),
                onPress: () {},
                text: 'Log Out')
          ],
        ),
      ),
    );
  }
}
