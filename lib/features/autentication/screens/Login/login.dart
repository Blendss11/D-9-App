import 'package:d9/common/styles/spacing_style.dart';
import 'package:d9/features/autentication/screens/Login/LoginHeader.dart';
import 'package:d9/features/autentication/screens/Login/Social_login.dart';
import 'package:d9/features/autentication/screens/Login/divider.dart';
import 'package:d9/features/autentication/screens/Login/login_form.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TspacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TloginHeader(),
              LoginForm(),
              TFormDivider(
                dividerText: TTexts.OrsignInWith.capitalize!,
              ),
              const SizedBox(
                height: TSize.spaceBTWSection,
              ),
              TSocial()
            ],
          ),
        ),
      ),
    );
  }
}
