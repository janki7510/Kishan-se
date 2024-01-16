import 'package:get/get.dart';
import 'package:kishan_se/common/widgets/products/cart/cart_menu_icon.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final carousalCurrentIndex = 0.obs; //observable

  void updatePageIndicator(index){
    carousalCurrentIndex.value = index;
  }
}