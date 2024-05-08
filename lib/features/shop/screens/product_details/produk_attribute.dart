import 'package:d9/common/styles/text/product_text_title.dart';
import 'package:d9/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:d9/common/widgets/textx/section_heading.dart';
import 'package:d9/features/shop/screens/product_details/produck_price_text.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        RoundedContainer(
          padding: EdgeInsets.all(TSize.md),
          child: Column(
            children: [
              Row(
                children: [
                  TsectionHedding(title: 'Variation', showActionButton: false),
                  SizedBox(width: TSize.spaceBTWItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                    children: [
                      ProductTitleText(title: 'Price : ', smallSize: true),
                      

                      Text(
                        '\Rp 25.000',
                        style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(width: TSize.spaceBTWItems),

                      ProductPriceText(price:'20.000'),
                    ],
                  ),
                  Row(
                    children: [
                        ProductTitleText(title: 'Stock :  ', smallSize: true),
                        Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                    ],
                  )
                    ],
                  ),
                ],
              ),
              ProductTitleText(title: 'Teh Jeruk Nipis segar menyehatkan dan menghangatkan tubuh',
              smallSize: true,
              maxLines: 4,
              )
            ],
          ),
        ),

        SizedBox(height: TSize.spaceBTWItems),
        
      ],
    );
  }
}