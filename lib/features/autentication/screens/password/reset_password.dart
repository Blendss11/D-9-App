// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:d9/features/personalization/screens/autentication/controllers/forgot_password/forgot_pw_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:d9/features/autentication/screens/Login/login.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:d9/utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({
    Key? key,
    required this.email,
  }) : super(key: key);
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
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
                'Ganti Password',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),
              Text(
                'Kami mengirim untuk mengganti password dengan aman, jaga password mu agar akun mu terlindungi',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: const Text('Selesai')),
              ),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => ForgotPasswordController.instance.resendPasswordResetEmail(email),
                    child: const Text(
                      'Kirim ulang',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
