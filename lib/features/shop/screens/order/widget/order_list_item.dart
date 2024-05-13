import 'package:d9/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) => SizedBox(height: TSize.spaceBTWItems),
      itemBuilder: (_, index) => RoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(TSize.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Iconsax.ship),
                SizedBox(width: TSize.spaceBTWItems / 2),
      
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',style: Theme.of(context).textTheme.bodyLarge!.apply(color: Tcolors.primaryColor, fontWeightDelta: 1),
                    ),
                    Text('12 June 2029', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
      
                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: TSize.iconSm)),
              ],
            ),
            SizedBox(height: TSize.spaceBTWItems),
      
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.tag),
                      SizedBox(width: TSize.spaceBTWItems / 2),
                  
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',style: Theme.of(context).textTheme.labelMedium
                          ),
                          Text('[#894g2]', style: Theme.of(context).textTheme.headlineSmall),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      Icon(Iconsax.calendar),
                      SizedBox(width: TSize.spaceBTWItems / 2),
                  
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',style: Theme.of(context).textTheme.labelMedium
                          ),
                          Text('01 July 2029', style: Theme.of(context).textTheme.headlineSmall),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}