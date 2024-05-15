import 'package:d9/utils/constans/enums.dart';
import 'package:flutter/material.dart';

class TbrandsTitletext extends StatelessWidget {
  const TbrandsTitletext({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
    this.color,
  });

  final String title;
  final int maxLines;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
          style: brandTextSizes == TextSizes.small
              ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
              : brandTextSizes == TextSizes.medium
                  ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                  : brandTextSizes == TextSizes.large
                      ? Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: color)
                      : Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: color),
        )
      ],
    );
  }
}
