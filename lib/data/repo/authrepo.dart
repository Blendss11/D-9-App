import 'package:d9/features/autentication/screens/verify%20email/verify_email.dart';
import 'package:d9/features/personalization/screens/autentication/screens/Login/login.dart';
import 'package:d9/features/personalization/screens/autentication/screens/onboarding/onboarding.dart';
import 'package:d9/navigation_menu.dart';
import 'package:d9/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:d9/utils/exceptions/firebase_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthentificationRepository extends GetxController {
  static AuthentificationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    // TODO: implement onReady
    FlutterNativeSplash.remove();
    screenRedirect();
    super.onReady();
  }

  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => const NavigationMenu());
      }
    } else {
      //local storage
      deviceStorage.writeIfNull('isFirstTime', true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(() => VerifyEmailScreen(
                email: _auth.currentUser?.email,
              ));
    }
  }

  //register email auth
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
      // } on FormatException catch (e) {
      //   throw TFormatException(e.code).message;
      // } on PlatformException catch (e) {
      //   throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong';
    }
  }

  //verify email
  Future<void> sendEmailVerification() async {
    try {
      return await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
      // } on FormatException catch (e) {
      //   throw TFormatException(e.code).message;
      // } on PlatformException catch (e) {
      //   throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong';
    }
  }

//logout
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
      // } on FormatException catch (e) {
      //   throw TFormatException(e.code).message;
      // } on PlatformException catch (e) {
      //   throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong';
    }
  }

  //login

  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
      // } on FormatException catch (e) {
      //   throw TFormatException(e.code).message;
      // } on PlatformException catch (e) {
      //   throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong';
    }
  }
}
