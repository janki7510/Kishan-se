import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kishan_se/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/constants/size.dart';
import 'package:kishan_se/utils/constants/text_strings.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';

class SignupScreen extends StatelessWidget{
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context){
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(TTexts.signupTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///Form
              Form(child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands:false,
                          decoration: const InputDecoration(
                            labelText: TTexts.firstName,
                            prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      ),
                      const SizedBox(width: TSize.spaceBtwInputFields,),
                      Expanded(
                        child: TextFormField(
                          expands:false,
                          decoration: const InputDecoration(
                            labelText: TTexts.lastName,
                            prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields,),

                  ///Username
                  TextFormField(
                    expands:false,
                    decoration: const InputDecoration(
                      labelText: TTexts.username,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields,),

                  ///Email
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon:  Icon(Iconsax.direct_right),
                      labelText: TTexts.email,
                    ),
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields,),

                  ///Phone Number
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon:  Icon(Iconsax.call),
                      labelText: TTexts.phoneNo,
                    ),
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields,),

                  ///Password
                  TextFormField(
                    obscureText: true,
                    decoration:  const InputDecoration(
                      prefixIcon:  Icon(Iconsax.password_check),
                      labelText: TTexts.password,
                      suffixIcon: Icon(Iconsax.eye_slash), ),
                  ),
                  const SizedBox(height: TSize.spaceBtwInputFields,),

                  ///Term & Conditions Checkbox
                  Row(
                    children: [
                      SizedBox(width:24,height: 24 ,child:Checkbox(value: true, onChanged: (value){})),
                      const SizedBox(width: TSize.spaceBtwItems,),
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(text: '${TTexts.iAgreeTo} ' ,style:Theme.of(context).textTheme.bodySmall ),
                          TextSpan(text: '${TTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.white : TColors.textPrimary,
                            decoration: TextDecoration.underline,
                            decorationColor:  dark ? TColors.white : TColors.textPrimary,
                          )),
                          TextSpan(text: 'and ' ,style:Theme.of(context).textTheme.bodySmall ),
                          TextSpan(text: TTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.white : TColors.textPrimary,
                            decoration: TextDecoration.underline,
                            decorationColor:  dark ? TColors.white : TColors.textPrimary,
                          )),
                        ]
                      ))
                    ],
                  ),
                  const SizedBox(height: TSize.spaceBtwItems,),

                  ///Sign Up Button
                  SizedBox(width: double.infinity,child: ElevatedButton(
                    onPressed: () => Get.to(() => const VerifyEmailScreen()),
                    child: const Text(TTexts.createAccount),)),
                ],
              ),
              ),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Divider(color: dark ? TColors.darkerGrey: TColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
                  Text(TTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
                  Flexible(child: Divider(color: dark ? TColors.darkerGrey: TColors.grey, thickness: 0.5, indent: 5, endIndent: 60,)),
                ],
              ),
              const SizedBox(height: TSize.spaceBtwSections,),

              ///Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: (){},
                        icon:  Image(
                          width: TSize.iconMd,
                          height: TSize.iconMd,
                          image: AssetImage(TImages.google),
                        )),
                  ),
                  const SizedBox(width: TSize.spaceBtwItems,),

                  Container(
                    decoration: BoxDecoration(border: Border.all(color: TColors.grey), borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: (){},
                        icon: Image(
                          width: TSize.iconMd,
                          height: TSize.iconMd,
                          image: AssetImage(TImages.facebook),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
