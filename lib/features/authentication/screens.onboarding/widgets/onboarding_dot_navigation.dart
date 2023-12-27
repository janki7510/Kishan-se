import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/constants/size.dart';
import 'package:kishan_se/utils/device/device_utility.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers.onboarding/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 6),
      ),
    );
  }
}
