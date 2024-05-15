import 'package:d9/common/widgets/image/circular_image.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TverticalImage extends StatelessWidget {
  const TverticalImage({
    super.key, 
    required this.image, 
    this.textColor = Tcolors.white, 
    this.backgroundColor = Tcolors.white,
     this.onTap, required this.title,  
     this.isNetworkImage = true,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSize.spaceBTWItems),
        child: Column(
          children: [
            TcircularImage(
              image: image,
              fit: BoxFit.fitWidth,
              padding: TSize.sm * 1.4,
              isNetworkImage: isNetworkImage,
              backgroundColor: backgroundColor,
              overlayColor: THelperFunction.isDarkMode(context) ? Tcolors.white : Tcolors.light,
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
