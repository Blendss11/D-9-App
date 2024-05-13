import 'package:d9/common/widgets/img_text_widget/vertical_img_text_widget.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:flutter/material.dart';

class ThomeCategory extends StatelessWidget {
  const ThomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TverticalImage(
              title: 'Minuman',
              image: Timage.OnboardImage2,
              onTap: () {},
            );
          }),
    );
  }
}
