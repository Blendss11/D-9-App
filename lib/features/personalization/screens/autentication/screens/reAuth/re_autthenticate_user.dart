import 'package:d9/features/personalization/screens/autentication/controllers/signup/user_controller.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:d9/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ReAuthLogin extends StatelessWidget {
  const ReAuthLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return  Scaffold(
      appBar: AppBar(title: const Text('Logout')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Form(
            key: controller.reAuthFromKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: controller.verifyEmail,
                  validator: TValidator.validateEmail,
                  decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.Email),
                ),
                const SizedBox(height: TSize.spaceBTWInputField,),


                Obx(() => TextFormField(
                  obscureText: controller.hidePassword.value,
                  controller: controller.verifyPassword,
                  validator: (value)=> TValidator.validateEmptyText("Password", value),
                  decoration: InputDecoration(
                    labelText: TTexts.Password,
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, icon: const Icon(Iconsax.eye_slash))
                  ),
                )
                ),
                const SizedBox(height: TSize.spaceBTWSection,),

                 SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.reAuthEmailAndPassword(),
                    child: const Text('Verify')),
              )
              ],
            )),
          
          ),
      ),
    );
  }
}