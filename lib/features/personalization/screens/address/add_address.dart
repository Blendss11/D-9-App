import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppaBar(showBackArrow: true, title: Text('Add New Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name')),
                SizedBox(height: TSize.spaceBTWInputField),
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number')),
                SizedBox(height: TSize.spaceBTWInputField),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Street'))),
                    SizedBox(width: TSize.spaceBTWInputField),
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Postal Code'))),
                  ],
                ),
                SizedBox(height: TSize.spaceBTWInputField),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'City'))),
                    SizedBox(width: TSize.spaceBTWInputField),
                    Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'Street'))),
                  ],
                ),
                SizedBox(height: TSize.spaceBTWInputField),
                TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country')),
                SizedBox(height: TSize.defaultSpace),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Save') ))
              ],
            )),
          ),
      ),
    );
  }
}