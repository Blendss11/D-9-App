import 'package:d9/features/shop/screens/cart/cart.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TcartCounter extends StatelessWidget {
  const TcartCounter({
    super.key, required this.onPressed, required this.iconColor ,
  });
  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(() => CartScreen()),
            icon:  Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: Tcolors.black,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text('2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(
                          color: Colors.white,
                          fontSizeFactor: 0.8)),
            ),
          ),
        )
      ],
    );
  }
}