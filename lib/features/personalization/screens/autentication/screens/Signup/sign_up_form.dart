<<<<<<< HEAD:lib/features/autentication/screens/Signup/sign_up_form.dart
import 'package:d9/features/autentication/controllers/signup/signup_controller.dart';
=======
import 'package:d9/features/personalization/screens/autentication/controllers/signup/signup_controller.dart';
import 'package:d9/features/personalization/screens/autentication/screens/Signup/terms_and_conditon.dart';
//import 'package:d9/features/personalization/screens/autentication/screens/verify%20email/verify_email.dart';
>>>>>>> 289217778cfce47134fe8d8aa0e3cb9b71b3dc90:lib/features/personalization/screens/autentication/screens/Signup/sign_up_form.dart
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:d9/utils/validators/validator.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/features/autentication/screens/Signup/sign_up_form.dart
=======
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
>>>>>>> 289217778cfce47134fe8d8aa0e3cb9b71b3dc90:lib/features/personalization/screens/autentication/screens/Signup/sign_up_form.dart
import 'package:iconsax/iconsax.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      TValidator.validateEmptyText('firstName', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.FirstName,
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSize.spaceBTWInputField),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSize.spaceBTWInputField),
          TextFormField(
            controller: controller.userName,
            validator: (value) =>
                TValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.Username,
              labelStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSize.spaceBTWInputField),
          TextFormField(
            validator: (value) => TValidator.validateEmail(value),
            controller: controller.email,
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.Email,
              labelStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSize.spaceBTWInputField),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              labelStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSize.spaceBTWInputField),
          Obx(
            () => TextFormField(
              obscureText: controller.hidePassword.value,
              controller: controller.password,
              validator: (value) => TValidator.validatePassword(value),
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: TTexts.Password,
                suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye)),
                labelStyle: const TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: TSize.spaceBTWSection),
         const TermsAndCondition(),
          const SizedBox(
            height: TSize.spaceBTWSection,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signUp(),
              child: const Text(TTexts.CreateAkun),
            ),
          )
        ],
      ),
    );
  }
}
