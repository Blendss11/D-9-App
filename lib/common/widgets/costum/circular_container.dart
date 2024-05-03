import 'package:d9/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class TcircularContainer extends StatelessWidget {
  const TcircularContainer({
    super.key, 
    this.width = 400, 
    this.height = 400,
    this.radius = 400, 
    this.padding = 0, 
     this.child,
    this.backgroundColor = Tcolors.white, 
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Tcolors.white.withOpacity(0.1)
      ),
      child: child,
    );
  }
}
