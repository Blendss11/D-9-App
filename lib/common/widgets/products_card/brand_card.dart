import 'package:d9/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:d9/common/widgets/image/circular_image.dart';
import 'package:d9/common/widgets/textx/brand_title_text_verified_icon.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/enums.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    this.onTap,
    required this.showBorder
    });

    final bool showBorder;
    final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: RoundedContainer(
        padding: const EdgeInsets.all(TSize.sm),
        showBorder: true,
        borderColor: Colors.black,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: TcircularImage(
                image: Timage.iconfood,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunction.isDarkMode(context)
                    ? Tcolors.white
                    : Tcolors.black,
              ),
            ),
            SizedBox(
              width: TSize.spaceBTWItems / 2,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TbrandtitlewithVerifiedicon(
                  title: 'Singkong',
                  brandTextSizes: TextSizes.large,
                ),
                Text(
                  '20 produk',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
