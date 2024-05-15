import 'package:d9/utils/constans/colors.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {

  const CircularIcon({
    super.key, 
    this.width ,
     this.size = 24.0, 
     required this.icon, 
     this.color, 
     this.backgroundColor, 
     this.onPressed,
      this.height,
    
    });
    final double? width, height, size; 
    final IconData icon;
    final Color? color;
    final Color? backgroundColor;
    final VoidCallback? onPressed;
     

  @override
  Widget build(BuildContext context) {
    return Container(
     
        width: width,
        height: height,
        decoration: BoxDecoration(
          
            color:  backgroundColor  != null ? backgroundColor! 
            : THelperFunction.isDarkMode(context)? Tcolors.black.withOpacity(0.9) 
            : Tcolors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(100)  
        ),
        child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size,)),
    );
  }
}