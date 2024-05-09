import 'dart:async';

import 'package:d9/data/repo/authrepo.dart';
import 'package:d9/features/autentication/screens/verify%20email/success_screen.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:d9/utils/poppups/loaders/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyController extends GetxController {
  static VerifyController get instance => Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    setTimerForRedirect();
    sendEmailVerification();
    super.onInit();
  }
}

checkEmailVerificationStatus() {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null && currentUser.emailVerified) {
     Get.off(SuccessScreen(
          image: Timage.VerifyIcon,
          title: TTexts.SuccessTitle,
          subtitle: TTexts.SuccessTitlesub,
          onPressed: () =>
              AuthentificationRepository.instance.screenRedirect()));
  }
}

setTimerForRedirect() {
  Timer.periodic(const Duration(seconds: 1), (timer) async {
    await FirebaseAuth.instance.currentUser?.reload();
    final user = FirebaseAuth.instance.currentUser;
    if (user?.emailVerified ?? false) {
      timer.cancel();
      Get.off(SuccessScreen(
          image: Timage.VerifyIcon,
          title: TTexts.SuccessTitle,
          subtitle: TTexts.SuccessTitlesub,
          onPressed: () =>
              AuthentificationRepository.instance.screenRedirect()));
    }
  });
}

sendEmailVerification() async {
  try {
    await AuthentificationRepository.instance.sendEmailVerification();
    Loaders.successSnackbar(
        title: 'Email Terkirim', message: 'Silahkan cek di email anda');
  } catch (e) {
    Loaders.errorSnackBar(title: 'Error Occured', message: e.toString());
  }
}
