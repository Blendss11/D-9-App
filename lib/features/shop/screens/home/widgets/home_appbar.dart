import 'package:d9/common/widgets/appbar/appbar.dart';
import 'package:d9/common/widgets/producs.cart/products_menu_cart.dart';
import 'package:d9/features/personalization/controllers/user_controller.dart';
import 'package:d9/features/shop/screens/home/widgets/shimmer.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ThomeAppBar extends StatelessWidget {
  const ThomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
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
          Obx(
            () {
              if (controller.profileLoading.value) {
                return const TshimmerEffect(width: 80, height: 15,);
              } else {
              return Text(
             controller.user.value.fullName,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: Colors.white),
            );
            }
            }
          )
        ],
      ),
      action: [
        TcartCounter(onPressed: () {}, iconColor: Tcolors.white,)
      ],
    );
  }
}
