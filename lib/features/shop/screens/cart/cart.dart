import 'package:d9/common/widgets/image/rounded_image.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //showBackArrow: true, 
      title: Text(
        'Cart', style: Theme.of(context).textTheme.headlineSmall
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: ListView.separated(
            separatorBuilder: (_, __) => SizedBox(height: TSize.spaceBTWSection),
             itemCount: 4,
             itemBuilder: (_, index) => Column(
              children: [
                RoundedImage(
                imageUrl: Timage.productImage1,
                width: 60,
                height: 60,
                padding: EdgeInsets.all(TSize.sm)
                )
              ],
             )),
          ),
      ),
    );
  }
}