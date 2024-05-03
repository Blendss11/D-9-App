import 'package:d9/features/autentication/controllers/onboarding/onboarding_controller.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnboardNextButton extends StatelessWidget {
  const OnboardNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSize.defaultSpace,
      bottom: TDeviceUtility.getBottomNavigationBarHeight(),
      
      child: ElevatedButton(
        
        onPressed: () => OnboardingController.instance.nextPage(),
        
        style: ElevatedButton.styleFrom(shape:const CircleBorder(), backgroundColor: Tcolors.primaryColor, ),
        child: const Icon(Iconsax.arrow_right_3),
      ));
  }
}
