import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shimmer_pro/shimmer_pro.dart';

class TshimmerEffect extends StatelessWidget {
  const TshimmerEffect({super.key, 
  required this.width, 
  required this.height,
    this.radius = 15, 
   this.color
   });

  final double width, height, radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,

      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (dark ? Tcolors.grey : Tcolors.white),
          borderRadius: BorderRadius.circular(radius)
        ),
      ),
      
    );
  }
}