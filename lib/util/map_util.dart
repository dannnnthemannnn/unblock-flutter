import 'dart:math' as Math;
import 'package:unblock/protos/point.pb.dart';

class MapUtil {
  static Math.Point fromLatLngToPoint(Point point) {
    double y = (point.y + 180) / 360 * 256;
    double x = ((1 -
                Math.log(Math.tan(point.x * Math.pi / 180) +
                        1 / Math.cos(point.x * Math.pi / 180)) /
                    Math.pi) /
            2 *
            Math.pow(2, 0)) *
        256;
    return Math.Point(x, y);
  }
}
