import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kishan_se/common/widgets/success_screen/success_screen.dart';
import 'package:kishan_se/features/authentication/screens/login/login.dart';
import 'package:kishan_se/utils/constants/image_strings.dart';
import 'package:kishan_se/utils/constants/size.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget{
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:() => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //Padding to give default equal space on all sides in all screens.
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(image: const AssetImage(TImages.emailvalidation),width: THelperFunctions.screenWidth(),),
              const SizedBox(height: TSize.spaceBtwSections,),
              ///Title & SubTitle
              Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwItems,),
              Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSize.spaceBtwItems,),
              /// Buttons
              SizedBox(width: double.infinity,
                child: ElevatedButton(
                   onPressed: () => Get.to(() => const SuccessScreen()) ,
                   child: const Text(TTexts.tContinue),),),
              const SizedBox(height: TSize.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){} ,child: const Text(TTexts.resendEmail),),),
            ],
          ),
        ),
      ),
    );
  }


}