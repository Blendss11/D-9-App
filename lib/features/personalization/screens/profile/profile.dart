import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/image/circular_image.dart';
import 'package:d9/common/widgets/textx/section_heading.dart';
import 'package:d9/features/personalization/controllers/user_controller.dart';
import 'package:d9/features/personalization/screens/profile/profile_menu.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final controller = UserController.instance;
    return Scaffold(
      appBar: TAppaBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TcircularImage(
                      image: Timage.VerifyIcon,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {}, child: const Text('Change Profile'))
                  ],
                ),
              ),
              const SizedBox(
                height: TSize.spaceBTWItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),
              const TsectionHedding(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),
              TprofileMenu(onPressed: () {  }, title: 'Name', value: controller.user.value.fullName,),
              TprofileMenu(onPressed: () {  }, title: 'Username', value: controller.user.value.username,),

               const SizedBox(
                height: TSize.spaceBTWItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),
               const TsectionHedding(
                title: 'Personal Information',
                showActionButton: false,
              ),
               const SizedBox(
                height: TSize.spaceBTWItems,
              ),

               TprofileMenu(onPressed: () {  }, title: 'User_ID', value: controller.user.value.id, icon: Iconsax.copy,),
              TprofileMenu(onPressed: () {  }, title: 'Email', value: controller.user.value.email,),
              TprofileMenu(onPressed: () {  }, title: 'Phone Number', value: controller.user.value.phoneNumber,),
              TprofileMenu(onPressed: () {  }, title: 'Gender', value: 'Male',),
              TprofileMenu(onPressed: () {  }, title: 'Date of Birth', value: '07-07-2006',),

               const Divider(),
              const SizedBox(
                height: TSize.spaceBTWItems,
              ),

              Center(
                child: TextButton(onPressed: (){}, child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
              )

            ],
          ),
        ),
      ),
    );
  }
}

