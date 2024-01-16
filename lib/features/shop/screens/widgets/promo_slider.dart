import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kishan_se/features/authentication/controllers/onboarding/home_controller.dart';

import '../../../../common/widgets/custome_Shapes/containers/circular_container.dart';
import '../../../../common/widgets/image/t_rounded_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banner,
  });

 final List<String> banner;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction : 1,
              onPageChanged: (index, _) => controller.updatePageIndicator(index),
            ),
            items: banner.map((url) => TRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: TSize.spaceBtwItems,),
        Center(
          child: Obx(
              () => Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i =0; i < banner.length; i++)
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i ? TColors.primary : TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
