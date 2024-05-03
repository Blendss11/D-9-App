import 'package:d9/features/autentication/controllers/onboarding/onboarding_controller.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardNavigation extends StatelessWidget {
  const OnboardNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: TDeviceUtility.getBottomNavigationBarHeight() + 25,
      left: TSize.defaultSpace,
      
      child: SmoothPageIndicator(
        count: 2,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        
        
       effect: const ExpandingDotsEffect(activeDotColor: Tcolors.primaryColor, dotHeight: 6),));
  }
}

