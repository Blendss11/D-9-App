import 'package:d9/common/widgets/icons/circular_icon.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TprodukQuantity extends StatelessWidget {
  const TprodukQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSize.md,
        ),
        SizedBox(width: TSize.spaceBTWItems),
        Text('2',
            style:
                Theme.of(context).textTheme.titleSmall),
        SizedBox(width: TSize.spaceBTWItems),
        CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSize.md,
          color: Tcolors.white,
          backgroundColor: Tcolors.primaryColor,
        ),
      ],
    );
  }
}