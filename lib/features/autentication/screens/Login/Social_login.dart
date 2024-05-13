import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TSocial extends StatelessWidget {
  const TSocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red.withOpacity(0.3)),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconMd,
              height: TSize.iconMd,
              image: AssetImage(Timage.google),
            ),
          ),
        ),
        const SizedBox(
          height: TSize.spaceBTWItems,
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red.withOpacity(0.3)),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSize.iconMd,
              height: TSize.iconMd,
              image: AssetImage(Timage.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
