import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class BoundsBorderPainter extends CustomPainter {
  BoundsBorderPainter({this.points, this.color});

  final Color color;
  final List<Point> points;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..color = color;
    Path path = new Path();

    if (points.length < 3) {
      return;
    }

    path.moveTo(points[0].x, points[0].y);
    points.skip(1).forEach((point) => path.lineTo(point.x, point.y));
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}