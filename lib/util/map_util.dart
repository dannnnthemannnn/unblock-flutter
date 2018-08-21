import 'dart:math' as Math;
import 'package:unblock/protos/point.pb.dart';

class MapUtil {
  static Math.Point fromLatLngToPointProto(Point point) {
    return fromLatLngToPoint(Math.Point(point.x, point.y));
  }

  static Math.Point fromLatLngToPoint(Math.Point point) {
    double x = (point.y + 180) / 360 * 256;
    double y = (1 -
        Math.log(Math.tan(point.x * Math.pi / 180) +
            1 / Math.cos(point.x * Math.pi / 180)) /
            Math.pi) /
        2 *
        256;
    return Math.Point(x, y);
  }

}
