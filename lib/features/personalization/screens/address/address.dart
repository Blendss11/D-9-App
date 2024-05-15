import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/features/personalization/screens/address/add_address.dart';
import 'package:d9/features/personalization/screens/address/widget/single_address.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Tcolors.primaryColor,
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        child: Icon(Iconsax.add, color: Tcolors.white),
        ),
        appBar: TAppaBar(
          showBackArrow: true,
          title: Text('Address', style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              children: [
               SingleAddress(selectedAddress: true),
               SingleAddress(selectedAddress: false)
              ],
            ),
            ),
        ),
    );
  }
}