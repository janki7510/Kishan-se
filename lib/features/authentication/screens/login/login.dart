import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kishan_se/common/styles/spacing_styles.dart';
import 'package:kishan_se/features/authentication/screens/login/login_form.dart';
import 'package:kishan_se/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:kishan_se/features/authentication/screens/signup/signup.dart';
import 'package:kishan_se/navigation_menu.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/constants/image_strings.dart';
import 'package:kishan_se/utils/constants/size.dart';
import 'package:kishan_se/utils/constants/text_strings.dart';
import 'package:kishan_se/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title & subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 70,
                     image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),


              /// form
              const TLoginForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Social Buttons
              const TSocialButtons(),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
