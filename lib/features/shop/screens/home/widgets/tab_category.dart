import 'package:d9/common/widgets/brands/brands_card.dart';
import 'package:d9/common/widgets/gridlayout/grid_layout.dart';
import 'package:d9/common/widgets/products_card/products_card_vertical.dart';
import 'package:d9/common/widgets/textx/section_heading.dart';
import 'package:d9/features/personalization/screens/autentication/model/category_model.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TcategoryTab extends StatelessWidget {
  const TcategoryTab({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      
      physics: const NeverScrollableScrollPhysics(),
      children: [
        
        Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            BrandShowcase(
              images: [
                Timage.productImage,
                Timage.productImage1,
                Timage.productImage2
              ],
            ),
             const SizedBox(height: TSize.spaceBTWItems,),
            TsectionHedding(title: 'You Might like', showActionButton: true, onPressed: (){},),
            const SizedBox(height: TSize.spaceBTWItems,),
      
            TgridLayout(itemCount: 4, itemBuilder: (_, index)=> TprodukVerticalCard())
          ],
        ),
      ),
      ]
    );
  }
}
