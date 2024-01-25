import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kishan_se/data/repositories/authentication/authentication_repository.dart';
import 'package:kishan_se/data/repositories/user/user_model.dart';
import 'package:kishan_se/data/repositories/user/user_repository.dart';
import 'package:kishan_se/features/authentication/screens/signup/verify_email.dart';

import 'package:kishan_se/utils/popups/loaders.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/network_manager.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  //SignupController();

  /// Variable
  final hidePassword = true.obs; // observe for hiding/showing password
  final privacyPolicy = true.obs; // observe for privacy policy acceptance
  final email = TextEditingController(); // controller for email input
  final lastname = TextEditingController(); // controller for last name  input
  final username =
      TextEditingController(); // controller for last username  input
  final password =
      TextEditingController(); // controller for last password  input
  final firstname = TextEditingController(); // controller for first name  input
  final phoneNumber =
      TextEditingController(); // controller for phone number  input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //get signupFormKey => null; // Form key for form validation
  /// --SIGNUP
  void signup() async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImages.loadAnimation);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if (!signupFormKey.currentState!.validate()) {
        // Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      //Privacy Policy Check
      if(!privacyPolicy.value){
        TLoaders.warningSnackBar(
          title: 'Accept privacy policy',
          message: 'In order to create account, you must have to read and accept the privacy policy &  terms of use.',

        );
        return;
      }

      //Register user in the Firebase Authentication & Save user data in the firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      // save authenticated user data in the firebase fire store,
      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstname.text.trim(),
          lastName: lastname.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // show success message
      TLoaders.successSnackBar(title: 'Congratulations!', message: 'Your account has been created! Verify email to continue.');

      //Move to verify email Screen
      Get.to(() =>  VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();

      // show some generic error to the user
      TLoaders.errorSnackBar(title: 'oh Snap', message: e.toString());
    }
  }
}

