import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kishan_se/common/widgets/appbar/appbar.dart';
import 'package:kishan_se/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:kishan_se/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:kishan_se/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:kishan_se/common/widgets/texts/section_heading.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/constants/image_strings.dart';
import 'package:kishan_se/utils/constants/size.dart';
import 'package:kishan_se/common/widgets/list_tile/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  TAppBar(
                      title: Text('Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white))),

                  ///User Profile card
                  const TUserProfileTile(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// --body
             const Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///--Account Settings
                  TSectionHeading(title: 'Account Settings',showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(icon: Iconsax.safe_home,title: "My Addresses", subTitle: "Set Shopping delivery address"),
                  TSettingsMenuTile(icon: Iconsax.shopping_cart,title: "My Cart", subTitle: "Add,remove products and move to checkout."),
                  TSettingsMenuTile(icon: Iconsax.bag_tick,title: "My Orders", subTitle: "In-Progress and Completed Orders"),
                  TSettingsMenuTile(icon: Iconsax.security_card,title: "Account  Privacy", subTitle: "Manage data usage and connected accounts"),

                  ///--App Settings
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(title: 'App Settings' , showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),
                  TSettingsMenuTile(icon: Iconsax.location, title:'Geolocation', subTitle: 'Set recommendation based on location'),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
