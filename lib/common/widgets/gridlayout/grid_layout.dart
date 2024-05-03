import 'package:d9/common/widgets/products_card/products_card_vertical.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TgridLayout extends StatelessWidget {
  const TgridLayout({
    super.key,
     required this.itemCount,
      this.mainAxisExtent = 288, 
      required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
     itemCount: itemCount,
     shrinkWrap: true,
     padding: EdgeInsets.zero,
     physics:  NeverScrollableScrollPhysics(),
     gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       mainAxisSpacing: TSize.gridViewSpacing,
       crossAxisSpacing: TSize.gridViewSpacing,
       mainAxisExtent: mainAxisExtent,
       ) , 
     itemBuilder:itemBuilder
     );
  }
}


