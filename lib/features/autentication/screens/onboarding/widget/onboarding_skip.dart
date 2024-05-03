import 'package:d9/features/autentication/controllers/onboarding/onboarding_controller.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnboardSkip extends StatelessWidget {
  const OnboardSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtility.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
          onPressed: () => OnboardingController.instance.skipPage(),
          child: const Text(
            style: TextStyle(color: Tcolors.primaryColor),
            'Skip'),
        ));
  }
}