import 'package:d9/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    Key? key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor = Tcolors.light,
    this.isNetworkImage = false,
    this.borderRadius = 15.0,
  }) : super(key: key);

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15.0), // Ubah nilai tetap menjadi variabel borderRadius
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(applyImageRadius ? borderRadius : 0), // Gunakan borderRadius yang diberikan
          child: Image(
            fit: fit,
            image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider<Object>,
          ),
        ),
      ),
    );
  }
}
