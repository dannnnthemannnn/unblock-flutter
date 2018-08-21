import 'dart:math' as Math;

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:map_view/map_view.dart';

import 'package:unblock/protos/city.pb.dart';
import 'package:unblock/util/map_util.dart';
import 'package:unblock/common/zoomable_stack.dart';
import 'package:unblock/common/map_data.dart';
import 'package:unblock/city/neighborhood_widget.dart';

class CityMap extends StatefulWidget {
  CityMap({this.city}) : super();

  final City city;

  @override
  createState() => _CityMapState();
}

class _CityMapState extends State<CityMap> {
  static const mapsApiKey = 'AIzaSyC58Vw5LAsU1APbTdkQb3J14mMadVhx7Sc';

  static const List<Color> colors = [
    Colors.deepPurple,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.teal,
  ];

  Math.Random randomGenerator = Math.Random();

  StaticMapProvider mapProvider = new StaticMapProvider(mapsApiKey);

  MapData _getMapData(BoxConstraints constraints) {
    const int maxSize = 640;
    double screenHeight = constraints.maxHeight;
    double screenWidth = constraints.maxWidth;
    int height = screenHeight >= screenWidth
        ? maxSize
        : (maxSize * screenHeight / screenWidth).ceil();
    int width = screenWidth > screenHeight
        ? maxSize
        : (maxSize * screenWidth / screenHeight).ceil();

    Math.Point centerInWorld =
        MapUtil.fromLatLngToPointProto(widget.city.center);

    List<Math.Point> points =
        widget.city.bounds.points.map(MapUtil.fromLatLngToPointProto).toList();

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

    print(xZoom.toString() + ' ' + yZoom.toString());
    return MapData(
      zoom: Math.min(xZoom, yZoom).floor(),
      center: Math.Point(widget.city.center.x, widget.city.center.y),
      height: height,
      width: width,
    );
  }

  Widget _getMap(MapData mapData) {
    return Positioned.fill(
      child: Container(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.network(mapProvider.getStaticUri(
            Location(mapData.center.x, mapData.center.y),
            mapData.zoom,
            height: mapData.height,
            width: mapData.width,
            mapType: StaticMapViewType.roadmap,
            styles: [
              'feature:poi|visibility:off',
              'feature:administrative|visibility:off',
            ],
          ).toString()),
        ),
      ),
    );
  }

  List<Widget> _getNeighborhoods(MapData mapData, BoxConstraints constraints) {
    return widget.city.neighborhoods
        .where((neighborhood) => neighborhood.bounds.points.isNotEmpty)
        .map((neighborhood) => NeighborhoodWidget(
              neighborhood: neighborhood,
              mapData: mapData,
              constraints: constraints,
              color: colors[randomGenerator.nextInt(colors.length)],
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        MapData mapData = _getMapData(constraints);

        return Scaffold(
          body: ZoomableStack(
            children: [
              _getMap(mapData),
            ]..addAll(_getNeighborhoods(mapData, constraints)),
          ),
        );
      }),
    );
  }
}
