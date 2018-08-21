import 'dart:math';

class MapData {
  MapData({this.zoom, this.height, this.width, this.center});

  final int zoom;
  final int height;
  final int width;
  final Point center;
}