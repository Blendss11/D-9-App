import 'package:d9/features/shop/screens/home/widgets/shimmer.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TCategoryShimmer extends StatelessWidget {
  const TCategoryShimmer({super.key,  
  this.itemCount = 6});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(width: TSize.spaceBTWItems,),
        itemCount: itemCount,
         itemBuilder: (_, __) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TshimmerEffect(width: 55, height: 55, radius: 55,),
              SizedBox(height: TSize.spaceBTWItems / 2,),

              TshimmerEffect(width: 55, height: 8)
            ],
          );
         },
        ),
    );
  }
}