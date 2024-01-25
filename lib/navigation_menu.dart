import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:kishan_se/features/personalization/screens/settings/settings.dart';
import 'package:kishan_se/features/shop/screens/home.dart';
import 'package:kishan_se/features/shop/screens/store/store.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';


class NavigationMenu extends StatelessWidget{
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context){
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value= index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),

          destinations: const [
             NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
             NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            // NavigationDestination(icon: Icon(Iconsax.shopping_cart5), label: 'Cart'),
             NavigationDestination(icon: Icon(Iconsax.user_edit), label: 'Account'),
          ],
        ),
      ),
      body: Obx(() =>  controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen() , const StoreScreen(), Container(color: Colors.blue), const SettingsScreen() ];
}