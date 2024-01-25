import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kishan_se/features/authentication/screens/login/login.dart';
import 'package:kishan_se/features/authentication/screens/onboarding/onboarding.dart';
import 'package:kishan_se/features/authentication/screens/signup/verify_email.dart';
import 'package:kishan_se/navigation_menu.dart';
import '../../../common/widgets/layouts/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;


  /// Called  from main,dart an app launch
  @override
  void onReady() {
    // Remove the native splash screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

  // function to show Relevant Screen
  screenRedirect() async {
    final user = _auth.currentUser;
    if(user != null) {
    if (user.emailVerified) {
      Get.offAll(() => const NavigationMenu());
    } else {
      Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
    }
  } else {
  // Local Storage
  deviceStorage.writeIfNull('IsFirstTime', true);
  deviceStorage.read('IsFirstTime') != true
  ? Get.offAll(() => const LoginScreen())
      : Get.offAll(const OnBoardingScreen());
  }
}




  /* ..... Email & Password Sign-in........*/

    /// [EmailAuthentication] - LOGIN
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e) {
      throw TFirebaseAuthException (e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw  TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch(e) {
      throw 'Something went wrong.Please try again';
    }
  }

  /// [EmailAuthentication] - REGISTER
Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
  try {
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch(e) {
    throw TFirebaseAuthException (e.code).message;
  } on FirebaseException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw  TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch(e) {
    throw 'Something went wrong.Please try again';
  }
}

    /// [EmailVerification] - MAIL VERIFICATION
  Future<void> sendEmailVerification() async {
    try {
       await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch(e) {
      throw TFirebaseAuthException (e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw  TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch(e) {
      throw 'Something went wrong.Please try again';
    }
  }
    /// [ReAuthentication] - ReAuthenticate User
    /// [EmailAuthentication] - FORGET Password

/* ..... Federate identity & social Sign-in........*/
      /// [GoogleAuthentication] - GOOGLE
      /// [FacebookAuthentication] - FACEBOOK

/* ..... /.end Federate identity & social Sign-in........*/
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch(e) {
      throw TFirebaseAuthException (e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw  TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch(e) {
      throw 'Something went wrong.Please try again';
    }
  }
      /// [LogoutUser] - valid for any authentication
      /// [DeleteUser] - Remove user authentication and firebase account

}
