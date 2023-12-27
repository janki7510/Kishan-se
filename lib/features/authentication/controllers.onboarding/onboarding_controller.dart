import "package:flutter/cupertino.dart";
import "package:get/get.dart";
import "package:kishan_se/features/authentication/screens.onboarding/login.dart";

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Just to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & Jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2){
       Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index & Jump to next page
  void skipPage() {
    // currentPageIndex.value = 2;
    // pageController.jumpToPage(2);
    Get.offAll(const LoginScreen());
  }
}
