import 'package:d9/features/personalization/screens/autentication/controllers/signup/signup_controller.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;
    return   Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Obx(
                  () => Checkbox(
                    value: controller.privacyPolicy.value,
                    onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value,
                  ),
                ),
              ),
              const SizedBox(width: TSize.spaceBTWItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${TTexts.IsAgreeTo}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: ' ${TTexts.Privicypolicy}',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: Tcolors.primaryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: Tcolors.primaryColor,
                          ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: '${TTexts.Termsus}',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: Tcolors.primaryColor,
                            decoration: TextDecoration.underline,
                            decorationColor: Tcolors.primaryColor,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}