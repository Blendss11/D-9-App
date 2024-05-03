import 'package:d9/features/autentication/screens/password/reset_password.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSize.spaceBTWItems,
            ),
            Text(
              'Jangan khawatir semua orang pasti lupa, masukan email yang terdaftar dan kami akan mengirimkan link untuk memperbarui password anda',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: TSize.spaceBTWSection * 2,
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: TTexts.Email,
                  prefixIcon: Icon(Iconsax.direct_right),
                  hintStyle: TextStyle(color: Colors.black)),
            ),
            const SizedBox(
              height: TSize.spaceBTWSection,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()),
                    child: const Text('Submit')))
          ],
        ),
      ),
    );
  }
}
