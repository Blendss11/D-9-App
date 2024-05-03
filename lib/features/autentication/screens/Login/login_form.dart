import 'package:d9/features/autentication/screens/Signup/signup.dart';
import 'package:d9/features/autentication/screens/password/forgot_password.dart';
import 'package:d9/navigation_menu.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBTWSection),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.Email,
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            const SizedBox(
              height: TSize.spaceBTWInputField,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.Password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            const SizedBox(
              height: TSize.spaceBTWInputField / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.RemmemberMe)
                  ],
                ),
                TextButton(
                    onPressed: () => Get.to(() => const ForgotPassword()) ,
                    child: const Text(
                      TTexts.ForgotPassword,
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
            const SizedBox(
                height: TSize
                    .spaceBTWSection // woi man accept gw access terminal -Gibran,
                ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(()=> const NavigationMenu()) ,
                child: const Text(TTexts.Signin),
              ),
            ),
            const SizedBox(
                height: TSize
                    .spaceBTWItems // woi man accept gw access terminal -Gibran,
                ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(()=> const SignUpScreen()),
                child: const Text(TTexts.CreateAkun),
              ),
            ),
            const SizedBox(
                height: TSize
                    .spaceBTWSection // woi man accept gw access terminal -Gibran,
                ),
          ],
        ),
      ),
    );
  }
}
