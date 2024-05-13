import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/features/personalization/controllers/update_name_controller.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:d9/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      appBar: TAppaBar(
        showBackArrow: true,
        title: Text('Change Name',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gunakan nama asli agar lebih mudah verifikasi. Nama ini akan ditampilkan pada beberapa halaman.',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: TSize.spaceBTWSection),
              Form(
                  key: controller.updateUserNameFromKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.firstName,
                        validator: (value) =>
                            TValidator.validateEmptyText('First name', value),
                        expands: false,
                        decoration: const InputDecoration(
                            labelText: TTexts.FirstName,
                            prefixIcon: Icon(Iconsax.user)),
                      ),
                      const SizedBox(height: TSize.spaceBTWSection),
                      TextFormField(
                        controller: controller.lastname,
                        validator: (value) =>
                            TValidator.validateEmptyText('Last Name', value),
                        expands: false,
                        decoration: const InputDecoration(
                            labelText: TTexts.LastName,
                            prefixIcon: Icon(Iconsax.user)),
                      ),
                    ],
                  )),
              const SizedBox(height: TSize.spaceBTWSection),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.updateUserName(),
                    child: const Text('Save')),
              )
            ],
          )),
    );
  }
}
