import 'package:d9/data/repo/authrepo.dart';
import 'package:d9/data/repo/userrepo.dart';
import 'package:d9/features/personalization/screens/autentication/model/signup/signup_model.dart';
import 'package:d9/features/autentication/screens/verify%20email/verify_email.dart';
//import 'package:d9/features/personalization/screens/autentication/screens/verify%20email/verify_email.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/helpers/network_manager.dart';
import 'package:d9/utils/poppups/loaders/full_screen_loader.dart';
import 'package:d9/utils/poppups/loaders/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  void signUp() async {
    try {
      //loading
      TFullScreenLoader.openLoadingDialog(
          'Processing Information', Timage.OnboardImage1);

      //chech network
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      //form validation
      if (!signUpFormKey.currentState!.validate()) return;

      //privacy policy check
      if (!privacyPolicy.value) {
        Loaders.warningSnackBar(
            title: 'Agree The Privacy And Policy',
            message:
                'Dalam membuat akun anda, anda harus menyetujui privacy dan policy');
        return;
      }

      final UserCredential = await AuthentificationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());
      final newUser = UserModel(
          id: UserCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: userName.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '');

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      Loaders.successSnackbar(
          title: 'Selamat datang',
          message: 'Akun anda telah dibuat!, selanjutnya verifikasi email');
      Get.to(() => VerifyEmailScreen(email: email.text.trim(),));

    } catch (e) {
      Loaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
