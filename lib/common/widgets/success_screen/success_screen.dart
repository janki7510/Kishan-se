import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kishan_se/common/styles/spacing_styles.dart';

import '../../../features/authentication/screens/login/login.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Image
              Image(image: const AssetImage(TImages.emailvalidate),width: THelperFunctions.screenWidth(),),
              const SizedBox(height: TSize.spaceBtwSections,),
              ///Title & SubTitle
              Text(TTexts.yourAccountCreatedTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwItems,),
              Text(TTexts.yourAccountCreatedSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwItems,),
              ///Buttons
              SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.to(() => const LoginScreen()) ,child: const Text(TTexts.tContinue),),),
            ],
          )
        ),
      ),
    );
  }
}
