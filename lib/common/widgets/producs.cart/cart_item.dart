import 'package:d9/common/widgets/image/rounded_image.dart';
import 'package:d9/common/widgets/textx/TprodukTitle.dart';
import 'package:d9/common/widgets/textx/brand_title_text_verified_icon.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TcartItem extends StatelessWidget {
  const TcartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
        imageUrl: Timage.productImage1,
        width: 60,
        height: 60,
        padding: EdgeInsets.all(TSize.sm)
        ),
        SizedBox(width: TSize.spaceBTWItems),
    
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TbrandtitlewithVerifiedicon(title: 'Singkong'),
              Flexible(child: TprodukTitle(title: 'Singkong Keju Bakar', maxLines: 1,)),
          
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Rasa', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Keju ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'isi', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: '08 pcs', style: Theme.of(context).textTheme.bodyLarge),
                  ])
              )
            ]
          ),
        )
      ],
    );
  }
}