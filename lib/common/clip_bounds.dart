import 'dart:math';
import 'dart:ui';

import 'package:flutter/widgets.dart';

class ClipBounds extends CustomClipper<Path> {
  ClipBounds({this.points});

  final List<Point> points;

  @override
  Path getClip(Size size) {
    Path path = new Path();

    if (points.length < 3) {
      return path;
    }

    path.moveTo(points[0].x, points[0].y);
    points.skip(1).forEach((point) => path.lineTo(point.x, point.y));
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
