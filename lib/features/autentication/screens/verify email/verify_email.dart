// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:d9/data/repo/authrepo.dart';
import 'package:d9/features/personalization/screens/autentication/controllers/signup/verify_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:d9/features/autentication/screens/Login/login.dart';
import 'package:d9/features/autentication/screens/verify%20email/success_screen.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:d9/utils/helpers/helper_function.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({
    Key? key,
    this.email,
  }) : super(key: key);
  final String? email;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthentificationRepository.instance.logout(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(Timage.VerifyIcon),
                width: THelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSize.spaceBTWSection,
              ),
              Text(
                TTexts.ConfirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),
              Text(
                email ?? '',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),
              Text(
                TTexts.SubConfirmVerify,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => checkEmailVerificationStatus,
                      child: const Text(TTexts.Continue))),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(TTexts.ResendEmail)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
