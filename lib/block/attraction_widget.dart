import 'dart:math';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/protos/attraction.pb.dart';
import 'package:unblock/util/map_util.dart';
import 'package:unblock/common/map_data.dart';
import 'package:unblock/services/checkIn_service.dart';

class AttractionWidget extends StatelessWidget {
  AttractionWidget({
    this.attraction,
    this.mapData,
    this.constraints,
    this.attractionSelectedCallback,
  });

  final Attraction attraction;
  final MapData mapData;
  final BoxConstraints constraints;
  final Function attractionSelectedCallback;

  static Point getLocationOffset(MapData mapData, BoxConstraints constraints, Attraction attraction) {
    Point centerPixels =
        MapUtil.fromLatLngToPoint(mapData.center) * pow(2, mapData.zoom);
    double scale = constraints.maxWidth / mapData.width;
    Point point = (MapUtil.fromLatLngToPointProto(attraction.location) *
                pow(2, mapData.zoom) -
            centerPixels +
            Point(mapData.width / 2, mapData.height / 2)) *
        scale;
    return point;
  }

  @override
  Widget build(BuildContext context) {
    Point locationPixel = getLocationOffset(mapData, constraints, attraction);
    double markerWidth = 25.0;
    return Positioned(
      left: locationPixel.x - markerWidth / 2,
      top: locationPixel.y - markerWidth,
      child: GestureDetector(
        onTap: () => attractionSelectedCallback(attraction),
        child: Icon(
          FontAwesomeIcons.mapMarkerAlt,
          size: markerWidth,
          color: CheckInService.checkInService.getCheckIn(attraction.id) != null
              ? Colors.green.withOpacity(1.0)
              : Colors.blueGrey,
        ),
      ),
    );
  }
}
