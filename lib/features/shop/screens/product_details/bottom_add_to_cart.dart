import 'package:d9/common/widgets/icons/circular_icon.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({
    super.key,
    
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: TSize.defaultSpace, vertical: TSize.defaultSpace / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSize.cardRadiusLg),
          topRight: Radius.circular(TSize.cardRadiusLg),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: Tcolors.grey,
                width: 40,
                height: 40,
                color: Tcolors.white,
                ),
                SizedBox(width: TSize.spaceBTWItems),
                Text('2', style: Theme.of(context).textTheme.titleSmall),
                SizedBox(width: TSize.spaceBTWItems),
                CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: Tcolors.black,
                width: 40,
                height: 40,
                color: Tcolors.white,
                ),
            ],
          ),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(TSize.md),
              backgroundColor: Tcolors.primaryColor,
              side: BorderSide(color: Tcolors.primaryColor),
            ), 
            child: Text('Add To Cart'),
            )
        ],
      ),
    );
  }
}