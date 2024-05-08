import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/gridlayout/grid_layout.dart';
import 'package:d9/common/widgets/products_card/products_card_vertical.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppaBar(title: Text('Popular Product'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [

              DropdownButtonFormField(
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                onChanged: (value){},
                items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
                .map((option) => DropdownMenuItem(value: option, child: Text(option)))
                .toList(),
              ),
              SizedBox(height: TSize.spaceBTWSection),

              TgridLayout(itemCount: 4, itemBuilder: (_, index) => TprodukVerticalCard())
            ],
          ),
          ),
      ),
    );
  }
}