import 'package:d9/features/autentication/screens/verify%20email/verify_email.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
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
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.Username,
              labelStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSize.spaceBTWInputField),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.Email,
              labelStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSize.spaceBTWInputField),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              labelStyle: TextStyle(color: Colors.black),
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSize.spaceBTWInputField),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.Password,
              suffixIcon: Icon(Iconsax.eye_slash),
              labelStyle: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(height: TSize.spaceBTWSection),
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
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
          ),
    
          
          const SizedBox(height: TSize.spaceBTWSection,),
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(()=> const VerifyEmailScreen()), child: const Text(TTexts.CreateAkun),),)
        ],
      ),
    );
  }
}