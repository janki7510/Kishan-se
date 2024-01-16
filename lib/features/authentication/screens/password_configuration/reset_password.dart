import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              children: [
                ///Image
                Image(image: const AssetImage(TImages.forgotpw),width: THelperFunctions.screenWidth(),),
                const SizedBox(height: TSize.spaceBtwItems,),

                ///Title & SubTitle
                Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: TSize.spaceBtwItems,),
                Text(TTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                const SizedBox(height: TSize.spaceBtwItems,),

                ///Buttons
                SizedBox(width: double.infinity,
                  child: ElevatedButton(onPressed: (){} ,child: const Text('Done'),),),

                const SizedBox(height: TSize.spaceBtwItems,),

                SizedBox(width: double.infinity,
                  child: TextButton(onPressed: (){} ,child: const Text(TTexts.resendEmail),),),



              ],
        ),
      ),
      ),
    );
  }
}
