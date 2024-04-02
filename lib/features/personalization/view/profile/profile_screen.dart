import 'package:e_commerce_application/Utils/constant/color.dart';
import 'package:e_commerce_application/Utils/constant/icon_strings.dart';
import 'package:e_commerce_application/Utils/helpers/helper_function.dart';
import 'package:e_commerce_application/common/widgets/widget.buttons/button_widget.dart';
import 'package:e_commerce_application/common/widgets/widget.container/circular_container.dart';
import 'package:e_commerce_application/common/widgets/widget.images/appbar_widget.dart';
import 'package:e_commerce_application/common/widgets/widget.text/section_heading.dart';
import 'package:e_commerce_application/common/widgets/widget.tile/profile_screen_tile.dart';
import 'package:e_commerce_application/common/widgets/widget_Authentication/store_divider.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/constant/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          showBackArrow: true,
          title: Text(
            'UserProfile',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// Profile and Change Profile
              const CircularContainer(
                  backGroundColor: Colors.red,
                  showImage: true,
                  circularImage: StoreIcon.grocery,
                  radius: StoreSizes.iconXl),
              const SizedBox(
                height: StoreSizes.spaceBTWItems,
              ),
              TextButtonWidget(
                  onPress: () {},
                  text: 'Change Profile Photo',
                  buttonTextColor: StoreHelper.isDarkMode(context)
                      ? StoreColors.lightGrey
                      : StoreColors.darkGrey,
                  fontSize: StoreSizes.fontSizeSm),
              const SizedBox(
                height: StoreSizes.spaceBTWItems,
              ),

              /// Profile Information

              const StoreDivider(
                dividerText: '.',
              ),

              const SectionHeading(
                sectionTitle: 'Profile Information',
                showButton: false,
              ),

              const SizedBox(
                height: StoreSizes.spaceBTWItems,
              ),
              const StoreProfileTile(
                tileTrailingIcon: Icons.arrow_forward_ios_rounded,
                tileTitle: 'sri_hair',
                infoTitle: 'Name',
              ),
              const StoreProfileTile(
                tileTrailingIcon: Icons.arrow_forward_ios_rounded,
                tileTitle: 'sri_hair_store',
                infoTitle: 'Username',
              ),
              const StoreDivider(
                dividerText: '.',
              ),

              /// Personal Information
              const SectionHeading(
                sectionTitle: 'Personal Information',
                showButton: false,
              ),

              const SizedBox(
                height: StoreSizes.spaceBTWItems,
              ),

              const StoreProfileTile(
                tileTrailingIcon: Icons.copy,
                tileTitle: 'sri_hair20110',
                infoTitle: 'User Id',
              ),
              const StoreProfileTile(
                tileTrailingIcon: Icons.arrow_forward_ios_rounded,
                tileTitle: 'sri_hair@gmail.com',
                infoTitle: 'E-mail',
              ),
              const StoreProfileTile(
                tileTrailingIcon: Icons.arrow_forward_ios_rounded,
                tileTitle: '9874561230',
                infoTitle: 'Phone Number',
              ),
              const StoreProfileTile(
                tileTrailingIcon: Icons.arrow_forward_ios_rounded,
                tileTitle: '02/10/2001',
                infoTitle: 'Date of Birth',
              ),
              const SizedBox(
                height: StoreSizes.spaceBTWItems,
              ),
              const StoreDivider(
                dividerText: '.',
              ),
              const SizedBox(
                height: StoreSizes.spaceBTWItems,
              ),

              /// Log out and change User
              TextButtonWidget(
                  onPress: () {},
                  text: 'Close Account',
                  buttonTextColor: StoreColors.error,
                  fontSize: StoreSizes.fontSizeSm),
            ],
          ),
        ),
      ),
    );
  }
}
