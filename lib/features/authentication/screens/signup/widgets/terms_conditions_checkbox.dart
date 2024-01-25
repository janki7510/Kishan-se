import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kishan_se/utils/constants/size.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/constants/text_strings.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../signup_controller.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child:
            Obx(() =>  Checkbox(value: controller.privacyPolicy.value, onChanged: (value) => controller.privacyPolicy.value =!controller.privacyPolicy.value))),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: '${TTexts.iagreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: TTexts.privacyPolicy,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(
                  color: dark
                      ? TColors.white
                      : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? TColors.white
                      : TColors.primary,
                )),
            TextSpan(
                text: '${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(
                  color: dark
                      ? TColors.white
                      : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? TColors.white
                      : TColors.primary,
                )),
          ]),
        ),
      ],
    );
  }
}
