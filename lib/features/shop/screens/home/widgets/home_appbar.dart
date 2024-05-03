import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/producs.cart/products_menu_cart.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:flutter/material.dart';

class ThomeAppBar extends StatelessWidget {
  const ThomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppaBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBartitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.white),
          ),
          Text(
            TTexts.homeAppBarSubtitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          )
        ],
      ),
      action: [
        TcartCounter(onPressed: () {}, iconColor: Tcolors.white,)
      ],
    );
  }
}
