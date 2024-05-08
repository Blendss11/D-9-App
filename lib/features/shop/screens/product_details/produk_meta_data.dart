import 'package:d9/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:d9/common/widgets/textx/TprodukTitle.dart';
import 'package:d9/common/widgets/textx/brand_title_text_verified_icon.dart';
import 'package:d9/common/widgets/textx/produk_price.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/enums.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TprodukMetaData extends StatelessWidget {
  const TprodukMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkmode = THelperFunction.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: TSize.sm,
              backgroundColor: const Color.fromARGB(255, 255, 215, 70).withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSize.sm, vertical: TSize.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),),
            ),
            const SizedBox(width: TSize.spaceBTWItems,),

            Text('\Rp.25.000', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
             const SizedBox(width: TSize.spaceBTWItems,),
            TprodukPrice(price: '20.000', isLarge: true,)
          ],
        ),
         const SizedBox(height: TSize.spaceBTWItems),

         TprodukTitle(title: 'Teh Jeruk nipis Segar', ),
         const SizedBox(height: TSize.spaceBTWItems),

          Row(
            children: [
              TprodukTitle(title: 'Status :'),
              const SizedBox(width: TSize.spaceBTWItems,),
               Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
            ],
          ),
         
          const SizedBox(height: TSize.spaceBTWItems/ 1.5),

          Row(
            children: [
              const TbrandtitlewithVerifiedicon(title: 'D-9', brandTextSizes: TextSizes.medium, iconSize: 15.0, ),
            ],
          )
      ],
    );
  }
}