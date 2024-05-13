import 'package:d9/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
    required this.onPressed,
    });

    final VoidCallback onPressed;
    final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => CartScreen()), icon: Icon(Iconsax.shopping_bag)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        )
      ],
    );
  }
}