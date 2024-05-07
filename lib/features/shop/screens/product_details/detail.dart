import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/curvededge/curved_edge_widget.dart';
import 'package:d9/common/widgets/icons/circular_icon.dart';
import 'package:d9/common/widgets/image/rounded_image.dart';
import 'package:d9/features/shop/screens/product_details/produk_image_slider.dart';
import 'package:d9/features/shop/screens/product_details/produk_meta_data.dart';
import 'package:d9/features/shop/screens/product_details/rating_and_share.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
// Ubah dari 'constans' ke 'constants'
// Ubah dari 'constans' ke 'constants'
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key); // Perbaiki parameter key

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Timageslider(dark: dark),

            Padding(padding: EdgeInsets.only(right: TSize.defaultSpace, left: TSize.defaultSpace, bottom: TSize.defaultSpace),
            child: Column(
              children: [
                TratingAndShare(),

                TprodukMetaData()
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}

