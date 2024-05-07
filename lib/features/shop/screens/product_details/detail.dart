import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/curvededge/curved_edge_widget.dart';
import 'package:d9/common/widgets/icons/circular_icon.dart';
import 'package:d9/common/widgets/image/rounded_image.dart';
import 'package:d9/common/widgets/textx/section_heading.dart';
import 'package:d9/features/shop/screens/product_details/bottom_add_to_cart.dart';
import 'package:d9/features/shop/screens/product_details/produk_attribute.dart';
import 'package:d9/features/shop/screens/product_details/produk_image_slider.dart';
import 'package:d9/features/shop/screens/product_details/produk_meta_data.dart';
import 'package:d9/features/shop/screens/product_details/produk_review.dart';
import 'package:d9/features/shop/screens/product_details/rating_and_share.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
// Ubah dari 'constans' ke 'constants'
// Ubah dari 'constans' ke 'constants'
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key); // Perbaiki parameter key

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Timageslider(dark: dark),

            Padding(padding: EdgeInsets.only(right: TSize.defaultSpace, left: TSize.defaultSpace, bottom: TSize.defaultSpace),
            child: Column(
              children: [
                TratingAndShare(),

                TprodukMetaData(),
                  SizedBox(height: TSize.spaceBTWItems),

                ProductAttributes(),
                SizedBox(height: TSize.spaceBTWSection),

                SizedBox(width: double.infinity, child:ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                SizedBox(height: TSize.spaceBTWSection),

                TsectionHedding(title: 'Description', showActionButton: false),
                SizedBox(height: TSize.spaceBTWItems),
                ReadMoreText(
                  'Ini minuman enak banget gak boong dijamin gak bisa berenti minum sampe kembung gak ada rasa kembung sama sekali asli dah',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Show More',
                  trimExpandedText: ' Less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),
                Divider(),
                SizedBox(height: TSize.spaceBTWItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TsectionHedding(title: 'Reviews(200)', showActionButton: false),
                    IconButton(onPressed: ()=> Get.to(()=> RatingReview()), icon: Icon(Iconsax.arrow_right_3, size: 18))
                  ],
                ),
                SizedBox(height: TSize.spaceBTWSection),
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}

