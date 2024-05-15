import 'package:carousel_slider/carousel_slider.dart';
import 'package:d9/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:d9/common/widgets/image/rounded_image.dart';
import 'package:d9/features/shop/screens/controllers/banner_controller.dart';
import 'package:d9/features/shop/screens/controllers/home_controller.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class TpromoSlider extends StatelessWidget {
  const TpromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());
    return Column(children: [
      CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: controller.banners
              .map((banner) => RoundedImage(
                    imageUrl: banner.imageUrl,
                    isNetworkImage: true,
                    onPressed: () => Get.toNamed(banner.targetScreen),
                  ))
              .toList()),
      const SizedBox(
        height: TSize.spaceBTWItems,
      ),
      Center(
        child: Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < controller.banners.length; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? Tcolors.primaryColor
                      : Colors.grey,
                ),
            ],
          ),
        ),
      )
    ]);
  }
}
