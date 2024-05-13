import 'package:d9/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:d9/common/widgets/products_card/brand_card.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return  RoundedContainer(
      showBorder: true,
      borderColor: Tcolors.grey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSize.md),
      margin: const EdgeInsets.only(bottom: TSize.spaceBTWItems),
      child: Column(
        children: [
        const  BrandCard(showBorder: false),
        const SizedBox(height: TSize.spaceBTWItems,),
    
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
    
  }
   Widget brandTopProductImageWidget(String image, context){
      return  Expanded(
        child: RoundedContainer(
          height: 100,
          padding: EdgeInsets.all(TSize.md),
          margin: EdgeInsets.only(right: TSize.sm),
          child: Image(fit: BoxFit.contain, image: AssetImage(image)),
        )
        );
    }
  }