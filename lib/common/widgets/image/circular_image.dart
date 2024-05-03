import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TcircularImage extends StatelessWidget {
  const TcircularImage({
    super.key, 
    this.fit = BoxFit.cover, 
    required this.image, 
     this.isNetworkImage = false, 
    this.overlayColor, 
    this.backgroundColor, 
     this.width = 56,
      this.height = 56, 
      this.padding = TSize.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: THelperFunction.isDarkMode(context) ? Tcolors.black : Tcolors.white,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
        color:overlayColor,
        ),
      ),
    );
  }
}