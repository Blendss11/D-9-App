import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/image/circular_image.dart';
import 'package:d9/common/widgets/textx/section_heading.dart';
import 'package:d9/features/personalization/profile/profile_menu.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              TprofileMenu(onPressed: () {  }, title: 'Name', value: 'Jabarian',),
              TprofileMenu(onPressed: () {  }, title: 'Username', value: 'Jabarian',),

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

               TprofileMenu(onPressed: () {  }, title: 'User_ID', value: '456879', icon: Iconsax.copy,),
              TprofileMenu(onPressed: () {  }, title: 'Email', value: 'salmansalim006@gmail.com',),
              TprofileMenu(onPressed: () {  }, title: 'Phone Number', value: '+6281290840535',),
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

