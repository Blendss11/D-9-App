import 'package:d9/common/widgets/textx/brand_title.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/enums.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TbrandtitlewithVerifiedicon extends StatelessWidget {
  const TbrandtitlewithVerifiedicon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = Colors.blue,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TbrandsTitletext(title: title, maxLines: maxLines,textAlign: textAlign, brandTextSizes: brandTextSizes, color: textColor,),
        ),
        const SizedBox(width: TSize.xs,),
        Icon(Iconsax.verify5, color: iconColor, size: 8.0,)
      ],
    );
  }
}
