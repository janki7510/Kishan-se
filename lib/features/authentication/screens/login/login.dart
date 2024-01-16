import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kishan_se/common/styles/spacing_styles.dart';
import 'package:kishan_se/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/constants/image_strings.dart';
import 'package:kishan_se/utils/constants/size.dart';
import 'package:kishan_se/utils/constants/text_strings.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../../navigation_menu.dart';
import '../signup/widgets/signup.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key}) ;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
           children: [
            ///Logo,Title & subtitle
             Column(
               crossAxisAlignment: CrossAxisAlignment.start ,
               children: [
                 Image(
                   height: 150,
                   image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                ),
            Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSize.sm),
            Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
          ],
            ),

             ///Form
             Form(child: Padding(
               padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSections),
               child: Column(
                 children: [
                   ///Email
                   TextFormField(
                     decoration: InputDecoration(
                       prefixIcon:  Icon(Iconsax.direct_right),
                       labelText: TTexts.email,
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
                   const SizedBox(height: TSize.spaceBtwInputFields/2,),

                   ///Remember Me & Forget Password
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       ///Remember Me
                       Row(
                         children: [
                           Checkbox(value: true, onChanged: (value){}),
                           const Text(TTexts.rememberMe),
                         ],
                       ),

                       //Forget Password
                       TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(TTexts.forgetPassword)),
                     ],
                   ),
                   const SizedBox(height: TSize.spaceBtwInputFields,),

                   ///Sign In Button
                   SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(TTexts.signIn))),
                   const SizedBox(height: TSize.spaceBtwItems,),
                   ///Crate Account Button
                   SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(TTexts.createAccount))),
                   const SizedBox(height: TSize.spaceBtwSections,),
                 ],
               ),
             )),

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
                       icon: const Image(
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
                       icon: const Image(
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
