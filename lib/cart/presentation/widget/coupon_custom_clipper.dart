import 'dart:math';

import 'package:flutter/material.dart';

class CouponCustomPaint extends CustomPainter {
  final double radius = 7;
  final double cornerRadius = 3;
  final double gap = 10;

  final Color backgroundColor;

  CouponCustomPaint(this.backgroundColor);

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.lineTo(size.width - cornerRadius, 0);
    path.arcTo(
        Rect.fromPoints(
          Offset(size.width - cornerRadius, 0),
          Offset(size.width, cornerRadius),
        ),
        1.5 * pi,
        0.5 * pi,
        true);
    path.lineTo(size.width, size.height / 2 - gap);
    path.quadraticBezierTo(
      size.width - (radius * 2),
      size.height / 2,
      size.width,
      size.height / 2 + gap,
    );
    path.lineTo(size.width, size.height - cornerRadius);
    path.arcTo(
      Rect.fromPoints(
        Offset(size.width, size.height - cornerRadius),
        Offset(size.width - cornerRadius, size.height),
      ),
      0,
      0.5 * pi,
      false,
    );
    path.lineTo(cornerRadius, size.height);
    path.arcTo(
      Rect.fromPoints(
        Offset(cornerRadius, size.height),
        Offset(0, size.height - cornerRadius),
      ),
      0.5 * pi,
      0.5 * pi,
      false,
    );
    path.lineTo(0, size.height / 2 + gap);
    path.quadraticBezierTo(
      radius * 2,
      size.height / 2,
      0,
      size.height / 2 - gap,
    );
    path.lineTo(0, cornerRadius);
    path.arcTo(Rect.fromLTWH(0, 0, cornerRadius, cornerRadius), 1 * pi,
        0.5 * pi, false);
    path.close();
    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.color = backgroundColor;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
