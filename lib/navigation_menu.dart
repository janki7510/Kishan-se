import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kishan_se/features/shop/screens/widgets/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(  //Obx(observer) widget
        () => NavigationBar(     //created function and calling NavigationBar
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectIndex.value,
          onDestinationSelected: (index) => controller.selectIndex.value = index,

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home',),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'store',),
           // NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist',),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile',),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectIndex = 0.obs; //observer variable

  final screens = [const HomeScreen(),Container(color: Colors.purple,),Container(color: Colors.orange,),Container(color: Colors.blue,)];
}