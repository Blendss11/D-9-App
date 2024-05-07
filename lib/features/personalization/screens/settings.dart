import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/custom_shapes/containers/primary_header.dart';
import 'package:d9/common/widgets/image/circular_image.dart';
import 'package:d9/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:d9/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:d9/common/widgets/textx/section_heading.dart';
import 'package:d9/features/personalization/screens/address/address.dart';
import 'package:d9/features/personalization/screens/profile/profile.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///-- Header
            TprimaryHeader(
              height: 200,
              child: Column(
                children: [
                  TAppaBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: Tcolors.white),),),
                  const SizedBox(height: TSize.spaceBTWItems,),

                  TuserProfile(onPressed: () => Get.to(() => const ProfileScreen() ),),
                  SizedBox(height:TSize.spaceBTWSection),
                ],
              ),
            ),
           
             Padding(
                padding: EdgeInsets.all(TSize.defaultSpace),
                child: Column(
                   children: [
                     TsectionHedding(title: 'Account Settings', showActionButton: false),
                    SizedBox(height: TSize.spaceBTWItems),

                    SettingMenuTile(
                      icon: Iconsax.safe_home, 
                      title: 'My Address', 
                      subTitle: 'Atur alamat untuk dikirimkan barang', 
                      onTap: () => Get.to(() => UserAddressScreen()),
                      ),
                    SettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Atur alamat untuk dikirimkan barang'),
                    SettingMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'Atur alamat untuk dikirimkan barang'),
                    SettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Atur alamat untuk dikirimkan barang'),
                    SettingMenuTile(icon: Iconsax.discount_shape, title: 'Coupons', subTitle: 'Atur alamat untuk dikirimkan barang'),
                    SettingMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Atur alamat untuk dikirimkan barang'),

                    SizedBox(height: TSize.spaceBTWSection),
                    TsectionHedding(title: 'App Setting', showActionButton: false),
                    SizedBox(height: TSize.spaceBTWItems),
                    SettingMenuTile(icon: Iconsax.document_upload, title: 'Load data', subTitle: 'Upload data to firebase lorem ipsum dolor'),
                    SettingMenuTile(
                      icon: Iconsax.location, 
                      title: 'Geo Location', 
                      subTitle: 'Upload data to firebase lorem ipsum dolor',
                      trailing: Switch(value: true, onChanged: (value) {}),
                      ),
                    SettingMenuTile(
                      icon: Iconsax.security_user, 
                      title: 'Safe Mode', 
                      subTitle: 'Upload data to firebase lorem ipsum dolor',
                      trailing: Switch(value: false, onChanged: (value) {}),
                      ),
                    SettingMenuTile(
                      icon: Iconsax.image, 
                      title: 'Image Quality', 
                      subTitle: 'Upload data to firebase lorem ipsum dolor',
                      trailing: Switch(value: false, onChanged: (value) {}),
                      ),

                      SizedBox(height: TSize.spaceBTWSection),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: (){}, child: Text('Logout')),
                      ),
                      SizedBox(height: TSize.spaceBTWSection * 2.5),
                   
                   ],   
                )
            )
          ],
        ),
      ),
    );
  }
}

