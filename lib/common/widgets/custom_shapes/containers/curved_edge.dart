import 'package:flutter/material.dart';

class TcustomCurvedEdge extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);

    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);


    final secondcurve = Offset(0, size.height - 20);
    final secondlastcurve = Offset(size.width-30, size.height - 20);

    path.quadraticBezierTo(secondcurve.dx, secondcurve.dy, secondlastcurve.dx, secondlastcurve.dy);


    final third = Offset(size.width, size.height - 20);
    final thirdlastcurve = Offset(size.width, size.height);

    path.quadraticBezierTo(third.dx, third.dy, thirdlastcurve.dx, thirdlastcurve.dy);


    path.lineTo(size.width, 0);

    path.close();
    return path;

  }

  @override shouldReclip(covariant CustomClipper<Path> oldClipper){
    return true;

  }
}