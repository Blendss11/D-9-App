import 'package:d9/data/repo/authrepo.dart';
import 'package:d9/features/autentication/screens/password/reset_password.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/helpers/network_manager.dart';
import 'package:d9/utils/poppups/loaders/full_screen_loader.dart';
import 'package:d9/utils/poppups/loaders/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  static ForgotPasswordController get instance => Get.find();

  //var
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      //loading
      TFullScreenLoader.openLoadingDialog(
          'processing request', Timage.OnboardImage1);

      //check koneksyon
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      if (!forgetPasswordFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      await AuthentificationRepository.instance
          .sendForgotPasswordEmail(email.text.trim());

      TFullScreenLoader.stopLoading();

      Loaders.successSnackbar(
          title: 'Email terkirim', message: 'Silahkan check email anda');
      Get.to(() => ResetPassword(
            email: email.text.trim(),
          ));
    } catch (e) {
      TFullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Gagal!', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      //loading
      TFullScreenLoader.openLoadingDialog(
          'processing request', Timage.OnboardImage1);

      //check koneksyon
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      await AuthentificationRepository.instance.sendForgotPasswordEmail(email);

      TFullScreenLoader.stopLoading();

      Loaders.successSnackbar(
          title: 'Email terkirim', message: 'Silahkan check email anda');

          
    } catch (e) {
      TFullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Gagal!', message: e.toString());
    }
  }
}
