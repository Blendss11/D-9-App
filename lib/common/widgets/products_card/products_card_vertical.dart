import 'package:d9/common/styles/shadow.dart';
import 'package:d9/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:d9/common/widgets/icons/circular_icon.dart';
import 'package:d9/common/widgets/image/rounded_image.dart';
import 'package:d9/common/widgets/textx/TprodukTitle.dart';
import 'package:d9/common/widgets/textx/brand_title_text_verified_icon.dart';
import 'package:d9/common/widgets/textx/produk_price.dart';
import 'package:d9/features/shop/screens/product_details/detail.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TprodukVerticalCard extends StatelessWidget {
  const TprodukVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Get.to(()=> const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSize.produkimageradius),
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSize.sm),
              child: Stack(
                children: [
                  const RoundedImage(
                      imageUrl: Timage.productImage, applyImageRadius: true),
                  Positioned(
                    top: 12,
                    left: 10,
                    child: RoundedContainer(
                      radius: TSize.sm,
                      backgroundColor: const Color.fromARGB(255, 233, 194, 56)
                          .withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSize.sm, vertical: 4.0),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: Colors.black)),
                    ),
                  ),
                  const Positioned(
                    width: 40,
                    height: 40,
                    top: 4,
                    right: 4,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: TSize.spaceBTWItems / 2,
            ),
          const Padding(
              padding: const EdgeInsets.only(left: TSize.sm),
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   TprodukTitle(
                    title: 'Teh Jeruk nipis Segar',
                    smallSize: true,
                  ),
                   SizedBox(
                    height: TSize.spaceBTWItems / 2,
                  ),
                  TbrandtitlewithVerifiedicon(title: 'Singkong',),
                 
                ],
              ),
            ),
             Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                 const  Padding(
                     padding:  EdgeInsets.only(left: TSize.sm),
                     child:   TprodukPrice(
                          price: '25.000',
                        ),
                   ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Tcolors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TSize.cardRadiusMd),
                                bottomRight:
                                    Radius.circular(TSize.produkimageradius))),
                        child: const SizedBox(
                            width: TSize.iconLg * 1.2,
                            height: TSize.iconLg * 1.2,
                            child: Center(
                                child: Icon(
                              Iconsax.add,
                              color: Tcolors.white,
                            ))),
                      )
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

