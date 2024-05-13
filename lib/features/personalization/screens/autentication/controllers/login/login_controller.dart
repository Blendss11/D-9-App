import 'package:d9/data/repo/authrepo.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/helpers/network_manager.dart';
import 'package:d9/utils/poppups/loaders/full_screen_loader.dart';
import 'package:d9/utils/poppups/loaders/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  ///var
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final localStorage = GetStorage();
  final rememberMe = true.obs;
  final hidePassword = true.obs;

 // @override
  // void onInit() {
  //   email.text = localStorage.read('REMEMBER_ME_EMAIL');
  //   password.text = localStorage.read('REMEMBER_ME_PASSWORD');
  //   super.onInit();
  // }

  Future<void> emailAndPasswordSignIn() async {
    try {
      //loading
      TFullScreenLoader.openLoadingDialog('Logging in', Timage.OnboardImage1);

      //check internet
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      //form validation
      if (!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      //save data
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }
      //login auth with gmail and password
      final userCredential = await AuthentificationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      TFullScreenLoader.stopLoading();

      AuthentificationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Gagal', message: e.toString());
    }
  }
}
