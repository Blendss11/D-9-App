import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:d9/utils/poppups/loaders/animation_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: THelperFunction.isDarkMode(Get.context!)
                  ? Tcolors.black
                  : Tcolors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  TAnimationLoader(text: text, animation: animation)
                ],
              ),
            )));
  }

  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
