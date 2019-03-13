import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);

    var firstPt = Offset(size.width * 0.5 ,size.height - 30.0);
    var firstControlPt = Offset(size.width * 0.25 ,size.height - 50.0);
    path.quadraticBezierTo(firstControlPt.dx, firstControlPt.dy, firstPt.dx, firstPt.dy);

    var secondPt = Offset(size.width ,size.height - 50.0);
    var secondControlPt = Offset(size.width * 0.75 ,size.height - 10.0);
    path.quadraticBezierTo(secondControlPt.dx, secondControlPt.dy, secondPt.dx, secondPt.dy);

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;

}