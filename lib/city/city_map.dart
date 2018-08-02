import 'dart:math' as Math;

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:map_view/map_view.dart';

import 'package:unblock/protos/city.pb.dart';
import 'package:unblock/protos/point.pb.dart';
import 'package:unblock/util/map_util.dart';

class CityMap extends StatefulWidget {
  CityMap({this.city}) : super();

  final City city;

  @override
  createState() => _CityMapState();
}

class _CityMapState extends State<CityMap> {
  static const mapsApiKey = 'AIzaSyC58Vw5LAsU1APbTdkQb3J14mMadVhx7Sc';

  StaticMapProvider mapProvider = new StaticMapProvider(mapsApiKey);

  double _scale = 1.0;
  double _currentScale = 1.0;
  Offset _position = Offset.zero;
  Offset _startingPosition = Offset.zero;
  Offset _scaleCenter = Offset.zero;

  @override
  initState() {
    super.initState();
  }

  bool _canScale(double size, double offset, double scale) {
    double lowValue = -(size / 2) * scale + offset;
    double highValue = (size / 2) * scale + offset;
    print('$size $offset $scale $lowValue $highValue');
    return lowValue <= -size / 2 && highValue >= size / 2;
  }

  String _getGoogleMapsImage(
      BoxConstraints constraints, Point center, List<Point> bounds) {
    const int maxSize = 640;
    double screenHeight = constraints.maxHeight;
    double screenWidth = constraints.maxWidth;
    int height = screenHeight >= screenWidth
        ? maxSize
        : (maxSize * screenHeight / screenWidth).ceil();
    int width = screenWidth > screenHeight
        ? maxSize
        : (maxSize * screenWidth / screenHeight).ceil();

    Math.Point centerInWorld = MapUtil.fromLatLngToPoint(widget.city.center);

    List<Math.Point> points =
        widget.city.bounds.points.map(MapUtil.fromLatLngToPoint).toList();

    double xZoom = Math.log((height / 2) /
            (points
                .map((point) => (centerInWorld.x - point.x).abs())
                .reduce(Math.max))) /
        Math.log(2);

    double yZoom = Math.log((width / 2) /
            (points
                .map((point) => (centerInWorld.y - point.y).abs())
                .reduce(Math.max))) /
        Math.log(2);

    return mapProvider
        .getStaticUri(
          Location(widget.city.center.x, widget.city.center.y),
          Math.max(xZoom, yZoom).floor(),
          height: height,
          width: width,
        )
        .toString();
  }

  Widget _getCityStack(BoxConstraints constraints) {
    return Transform.translate(
      offset: _position + _scaleCenter - _startingPosition,
      child: Transform.scale(
        scale: _scale * _currentScale,
        child: GestureDetector(
          onScaleStart: (details) {
            setState(() {
              _startingPosition = details.focalPoint;
              _scaleCenter = details.focalPoint;
            });
          },
          onScaleUpdate: (details) {
            print(details);
            setState(() {
              _currentScale =
                  details.scale * _scale > 1.0 ? details.scale : 1.0/_scale;

              Offset newPosition =
                  _position + details.focalPoint - _startingPosition;
              double adjustedScale = _currentScale * _scale;

              double x = details.focalPoint.dx;
              double y = details.focalPoint.dy;
              if (-constraints.maxWidth / 2 * adjustedScale + newPosition.dx >
                  -constraints.maxWidth / 2) {
                x = constraints.maxWidth / 2 * adjustedScale -
                    constraints.maxWidth / 2 -
                    _position.dx +
                    _startingPosition.dx;
              }
              if (constraints.maxWidth / 2 * adjustedScale + newPosition.dx <
                  constraints.maxWidth / 2) {
                x = -constraints.maxWidth / 2 * adjustedScale +
                    constraints.maxWidth / 2 -
                    _position.dx +
                    _startingPosition.dx;
              }

              if (-constraints.maxHeight / 2 * adjustedScale + newPosition.dy >
                  -constraints.maxHeight / 2) {
                y = constraints.maxHeight / 2 * adjustedScale -
                    constraints.maxHeight / 2 -
                    _position.dy +
                    _startingPosition.dy;
              }
              if (constraints.maxHeight / 2 * adjustedScale + newPosition.dy <
                  constraints.maxHeight / 2) {
                y = -constraints.maxHeight / 2 * adjustedScale +
                    constraints.maxHeight / 2 -
                    _position.dy +
                    _startingPosition.dy;
              }

              _scaleCenter = Offset(x, y);
            });
          },
          onScaleEnd: (details) {
            setState(() {
              _scale *= _currentScale;
              _position += _scaleCenter - _startingPosition;
              _scaleCenter = Offset.zero;
              _startingPosition = Offset.zero;
              _currentScale = 1.0;
            });
          },
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Image.network(_getGoogleMapsImage(constraints,
                        widget.city.center, widget.city.bounds.points)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) => Scaffold(
              body: Stack(
                children: <Widget>[
                  _getCityStack(constraints),
                ],
              ),
            ),
      ),
    );
  }
}
