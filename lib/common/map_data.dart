import 'dart:math' as Math;

import 'package:flutter/widgets.dart';

import 'package:unblock/util/map_util.dart';
import 'package:unblock/protos/bounds.pb.dart';
import 'package:unblock/protos/point.pb.dart';

class MapData {
  factory MapData({Bounds bounds, Point center, BoxConstraints constraints}) {
    const int maxSize = 640;
    double screenHeight = constraints.maxHeight;
    double screenWidth = constraints.maxWidth;
    int height = screenHeight >= screenWidth
        ? maxSize
        : (maxSize * screenHeight / screenWidth).ceil();
    int width = screenWidth > screenHeight
        ? maxSize
        : (maxSize * screenWidth / screenHeight).ceil();

    center ??= _getCentroid(bounds.points);
    Math.Point centerInWorld = MapUtil.fromLatLngToPointProto(center);

    List<Math.Point> points =
        bounds.points.map(MapUtil.fromLatLngToPointProto).toList();

    double xZoom = Math.log((width / 2) /
            (points
                .map((point) => (centerInWorld.x - point.x).abs())
                .reduce(Math.max))) /
        Math.log(2);

    double yZoom = Math.log((height / 2) /
            (points
                .map((point) => (centerInWorld.y - point.y).abs())
                .reduce(Math.max))) /
        Math.log(2);

    return MapData._internal(
      zoom: Math.min(xZoom, yZoom).floor(),
      center: Math.Point(center.x, center.y),
      height: height,
      width: width,
    );
  }

  MapData._internal({this.zoom, this.height, this.width, this.center});

  final int zoom;
  final int height;
  final int width;
  final Math.Point center;

  static Point _getCentroid(List<Point> points) {
    Math.Point centroid =
        points.map(toMathPoint).reduce((one, two) => one + two) *
            (1.0 / points.length);
    return Point()
      ..x = centroid.x
      ..y = centroid.y;
  }

  static Math.Point toMathPoint(Point point) => Math.Point(point.x, point.y);

  Rect getInitialBoundingRect(List<Point> points, BoxConstraints constraints) {
    double top = points
            .map((p) =>
                (MapUtil.fromLatLngToPointProto(p).y -
                        MapUtil.fromLatLngToPoint(center).y) *
                    Math.pow(2, zoom) +
                height / 2)
            .reduce(Math.min) /
        height *
        constraints.maxHeight;
    double left = points
            .map((p) =>
                (MapUtil.fromLatLngToPointProto(p).x -
                        MapUtil.fromLatLngToPoint(center).x) *
                    Math.pow(2, zoom) +
                width / 2)
            .reduce(Math.min) /
        width *
        constraints.maxWidth;
    double bottom = points
            .map((p) =>
                (MapUtil.fromLatLngToPointProto(p).y -
                        MapUtil.fromLatLngToPoint(center).y) *
                    Math.pow(2, zoom) +
                height / 2)
            .reduce(Math.max) /
        height *
        constraints.maxHeight;
    double right = points
            .map((p) =>
                (MapUtil.fromLatLngToPointProto(p).x -
                        MapUtil.fromLatLngToPoint(center).x) *
                    Math.pow(2, zoom) +
                width / 2)
            .reduce(Math.max) /
        width *
        constraints.maxWidth;
    return Rect.fromLTRB(left, top, right, bottom);
  }
}
