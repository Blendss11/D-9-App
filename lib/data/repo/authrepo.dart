

import 'package:d9/data/repo/userrepo.dart';
import 'package:d9/features/autentication/screens/verify%20email/verify_email.dart';
import 'package:d9/features/personalization/screens/autentication/screens/Login/login.dart';
import 'package:d9/features/personalization/screens/autentication/screens/onboarding/onboarding.dart';
import 'package:d9/navigation_menu.dart';
import 'package:d9/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:d9/utils/exceptions/firebase_exceptions.dart';
import 'package:d9/utils/exceptions/format_exception.dart';
import 'package:d9/utils/exceptions/platfrom_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthentificationRepository extends GetxController {
  static AuthentificationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  User? get authUser => _auth.currentUser;

  @override
  void onReady() {
    
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
        Get.offAll(() => VerifyEmailScreen(
              email: _auth.currentUser?.email,
            ));
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
      } on FormatException catch (_) {
        throw TFormatException().message;
      } on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
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
      } on FormatException catch (_) {
        throw TFormatException().message;
      } on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong';
    }
  }

  //forgot password
  Future<void> sendForgotPasswordEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
      } on FormatException catch (_) {
        throw TFormatException().message;
      } on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong';
    }
  }

//logout
  Future<void> logout() async {
    try {
      await GoogleSignIn().signOut();
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
      } on FormatException catch (_) {
        throw TFormatException().message;
      } on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong';
    }
  }
  Future<void> deleteAccount() async {
    try {
      await UserRepository.instance.removeUserRecord(_auth.currentUser!.uid);
      await _auth.currentUser?.delete();
      
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
      } on FormatException catch (_) {
        throw TFormatException().message;
      } on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
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
      } on FormatException catch (_) {
        throw TFormatException().message;
      } on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong';
    }
  }
  Future<void> reAuthEmailAndPassword(String email, String password) async {
    try {
      AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);

      await _auth.currentUser!.reauthenticateWithCredential(credential);

    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
      } on FormatException catch (_) {
        throw TFormatException().message;
      } on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong';
    }
  }

  //google
  Future<UserCredential?> signInGoole() async {
    try {
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth = await userAccount?.authentication;

      final credentials = GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      return await _auth.signInWithCredential(credentials);
    }  on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
      } on FormatException catch (_) {
        throw TFormatException().message;
      } on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
    
     } catch(e){
       throw 'Something Went Wrong';
     }
  }

}

