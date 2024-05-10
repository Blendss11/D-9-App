import 'package:d9/features/autentication/screens/password/forgot_password.dart';
import 'package:d9/features/personalization/screens/autentication/controllers/login/login_controller.dart';
import 'package:d9/features/personalization/screens/autentication/screens/Signup/signup.dart';
import 'package:d9/navigation_menu.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:d9/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBTWSection),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.Email,
                  labelStyle: TextStyle(color: Colors.black)),
            ),
            const SizedBox(
              height: TSize.spaceBTWInputField,
            ),
            Obx(
              () => TextFormField(
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                validator: (value) =>
                    TValidator.validateEmptyText('Password', value),
                decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
                    labelText: TTexts.Password,
                    suffixIcon: IconButton(
                      icon: Icon(controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye),
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                    ),
                    labelStyle: const TextStyle(color: Colors.black)),
              ),
            ),
            const SizedBox(
              height: TSize.spaceBTWInputField / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value),
                    ),
                    const Text(TTexts.RemmemberMe)
                  ],
                ),
                TextButton(
                    onPressed: () => controller.emailAndPasswordSignIn(),
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
                onPressed: () => controller.emailAndPasswordSignIn(),
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
                onPressed: () => Get.to(() => const SignUpScreen()),
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
