import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/protos/block.pb.dart';
import 'package:unblock/block/block_map.dart';
import 'package:unblock/util/map_util.dart';
import 'package:unblock/common/map_data.dart';
import 'package:unblock/common/bounds_border_painter.dart';
import 'package:unblock/common/clip_bounds.dart';

class BlockWidget extends StatelessWidget {
  BlockWidget({
    this.block,
    this.mapData,
    this.constraints,
    this.color,
    this.showText = true,
    this.navigateOnTouch = true,
  });

  final Block block;
  final MapData mapData;
  final BoxConstraints constraints;
  final Color color;
  final bool showText;
  final bool navigateOnTouch;

  Rect _getBoundingRect() {
    List<Point> points =
        block.bounds.points.map(MapUtil.fromLatLngToPointProto).toList();
    Offset minPointPixels = Offset(
        points.map((point) => point.x).reduce(min) * pow(2, mapData.zoom),
        points.map((point) => point.y).reduce(min) * pow(2, mapData.zoom));
    Offset maxPointPixels = Offset(
        points.map((point) => point.x).reduce(max) * pow(2, mapData.zoom),
        points.map((point) => point.y).reduce(max) * pow(2, mapData.zoom));
    Point centerPixels =
        MapUtil.fromLatLngToPoint(mapData.center) * pow(2, mapData.zoom);

    double scale = constraints.maxWidth / mapData.width;
    double left =
        (minPointPixels.dx - centerPixels.x + mapData.width / 2) * scale;
    double top =
        (minPointPixels.dy - centerPixels.y + mapData.height / 2) * scale;

    return Rect.fromLTWH(
        left,
        top,
        (maxPointPixels.dx - minPointPixels.dx) * scale,
        (maxPointPixels.dy - minPointPixels.dy) * scale);
  }

  List<Point> _getPointsInRect(Rect position) {
    return block.bounds.points.map((p) {
      Point centerPixels =
          MapUtil.fromLatLngToPoint(mapData.center) * pow(2, mapData.zoom);
      double scale = constraints.maxWidth / mapData.width;
      Point point = (MapUtil.fromLatLngToPointProto(p) * pow(2, mapData.zoom) -
              centerPixels +
              Point(mapData.width / 2, mapData.height / 2)) *
          scale;
      return point - Point(position.left, position.top);
    }).toList();
  }

  Rect _getTitleBounding(Rect boundingRect, List<Point> points) {
    if (points.length < 2) {
      throw new Exception("block has no bounding points");
    }
    double y = boundingRect.height / 2;
    List<double> intersections = [];
    for (int i = 0; i < points.length; i++) {
      Point one = points[(i + points.length + 1) % points.length];
      Point two = points[i];
      if ((one.y > y && two.y > y) || (one.y < y && two.y < y)) {
        continue;
      }
      if (two.x == one.x) {
        intersections.add(two.x);
      } else {
        double slope = (two.y - one.y) / (two.x - one.x);
        double b = one.y - slope * one.x;
        double intersectingX = (y - b) / slope;
        intersections.add(intersectingX);
      }
    }

    intersections.sort();
    return Rect.fromLTRB(
        intersections[0], 0.0, intersections[intersections.length - 1], 0.0);
  }

  @override
  Widget build(BuildContext context) {
    Rect boundingRect = _getBoundingRect();
    List<Point> pointsInRect = _getPointsInRect(boundingRect);
    Rect titleBounding = _getTitleBounding(boundingRect, pointsInRect);

    List<Widget> stackChildren = [
      CustomPaint(
        painter: BoundsBorderPainter(
          points: pointsInRect,
          color: color.withOpacity(0.85),
        ),
        child: Container(
          width: boundingRect.width,
          height: boundingRect.height,
        ),
      ),
      Container(
        width: boundingRect.width,
        height: boundingRect.height,
        color: color,
        padding: const EdgeInsets.all(12.0),
      ),
    ];

    if (showText) {
      stackChildren.add(Positioned(
        left: titleBounding.left,
        child: Transform.rotate(
          angle: 0 * pi / 180,
          child: Container(
            width: titleBounding.width,
            height: boundingRect.height,
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            alignment: Alignment.center,
            child: Text(
              block.name.replaceAll(' ', '\n'),
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ));
    }

    return Positioned(
      left: boundingRect.left,
      top: boundingRect.top,
      child: ClipPath(
        clipper: ClipBounds(
          points: pointsInRect,
        ),
        child: GestureDetector(
          onTap: () {
            if (navigateOnTouch) {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => BlockMap(
                          block: block,
                        ),
                  ));
            }
          },
          child: Stack(
            children: stackChildren,
          ),
        ),
      ),
    );
  }
}
