import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kishan_se/common/widgets/loaders/animation_loader.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

/// A utility class for managing a full-screen loading dialog.
class TFullScreenLoader {
  /// open a full-screen loading dialog with a given text and animation.
  /// This method does not return anything.
  ///
  /// parameters:
  ///  -text: the text to be displayed in the loading dialog.
  ///  -animation: The lottie animation to be shown.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!, //use Get.overlay for overlay dialog
        barrierDismissible:
            false, // The dialog cannot be dismissed by tapping outside it
        builder: (_) => PopScope(
              canPop: false, // display popping with the back button
              child: Container(
                color: THelperFunctions.isDarkMode(Get.context!)
                    ? TColors.dark
                    : TColors.white,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 250),
                    TAnimationLoaderWidget(text: text, animation: animation),
                  ],
                ),
              ),
            ));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!)
        .pop(); // closes the dialog using navigator.
  }
}
