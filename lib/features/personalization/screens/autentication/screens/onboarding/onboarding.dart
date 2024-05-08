import 'package:d9/features/autentication/screens/onboarding/widget/onboarding_page.dart';
import 'package:d9/features/personalization/screens/autentication/controllers/onboarding/onboarding_controller.dart';
import 'package:d9/features/personalization/screens/autentication/screens/onboarding/widget/onboard_navigation.dart';
import 'package:d9/features/personalization/screens/autentication/screens/onboarding/widget/onboard_next.dart';
import 'package:d9/features/personalization/screens/autentication/screens/onboarding/widget/onboarding_skip.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/enums.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:d9/utils/device/device_utility.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardPage(
                image: Timage.OnboardImage1,
                title: TTexts.OnboardText1,
                subtitle: TTexts.OnboardSub1,
              ),
              OnboardPage(
                image: Timage.OnboardImage2,
                title: TTexts.OnboardText2,
                subtitle: TTexts.OnboardSub2,
              )
            ],
          ),
          const OnboardSkip(),

          OnboardNavigation(),

          OnboardNextButton()
        ],
      ),
    );
  }
}




