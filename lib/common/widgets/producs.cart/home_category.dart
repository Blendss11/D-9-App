import 'package:d9/common/widgets/img_text_widget/vertical_img_text_widget.dart';
import 'package:d9/features/personalization/controllers/category_controller.dart';
import 'package:d9/features/shop/screens/home/widgets/category_shimmer.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThomeCategory extends StatelessWidget {
  const ThomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());

    return Obx(() {
        if(categoryController.isLoading.value) return const TCategoryShimmer();

        if (categoryController.featuredCategories.isEmpty) {
          return Center(child: Text('No data Found!', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Tcolors.white)));
        }
        return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: categoryController.featuredCategories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final category = categoryController.featuredCategories[index];
              return TverticalImage(title: category.name, image: category.image,onTap: () {});
            }
          ),
      );
      });
  }
}
