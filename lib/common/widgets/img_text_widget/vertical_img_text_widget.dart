import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:flutter/material.dart';

class TverticalImage extends StatelessWidget {
  const TverticalImage({
    super.key, required this.image, this.textColor = Tcolors.white, this.backgroundColor = Tcolors.white, this.onTap, required this.title,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSize.spaceBTWItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSize.sm),
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius:
                      BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover, color: Tcolors.black,
                ),
              ),
            ),
            const SizedBox(height: TSize.spaceBTWItems / 2),
            SizedBox(
              width: 55,
              child: Text(title, style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              
              ))
          ],
        ),
      ),
    );
  }
}
