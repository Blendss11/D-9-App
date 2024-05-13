// import 'package:d9/features/personalization/screens/autentication/screens/Login/Social_login.dart';
// import 'package:d9/features/personalization/screens/autentication/screens/Login/divider.dart';
import 'package:d9/features/autentication/screens/Login/Social_login.dart';
import 'package:d9/features/autentication/screens/Login/divider.dart';
import 'package:d9/features/personalization/screens/autentication/screens/Signup/sign_up_form.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.SignUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSize.spaceBTWSection),


              TSignUpForm(),
              const SizedBox(height: TSize.spaceBTWSection,),
              TFormDivider(dividerText: TTexts.OrsignInWith.capitalize!),

            const SizedBox(height: TSize.spaceBTWSection,),


            const TSocial(),
            
            ],
          ),
        ),
      ),
    );
  }
}

