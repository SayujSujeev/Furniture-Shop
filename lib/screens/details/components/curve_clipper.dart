import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    Offset curvePoint1 = Offset(0, size.height * 0.825);
    Offset centerPoint = Offset(size.width * 0.25, size.height * 0.825);
    path.quadraticBezierTo(
      curvePoint1.dx,
      curvePoint1.dy,
      centerPoint.dx,
      centerPoint.dy,
    );
    path.lineTo(size.width * 0.75, size.height * 0.825);

    Offset curvePoint2 = Offset(size.width, size.height * 0.825);
    Offset centerPoint2 = Offset(size.width, size.height * 0.650);

    path.quadraticBezierTo(
      curvePoint2.dx,
      curvePoint2.dy,
      centerPoint2.dx,
      centerPoint2.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
