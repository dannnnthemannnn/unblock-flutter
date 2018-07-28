import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/protos/city.pb.dart';

class CityMap extends StatefulWidget {
  CityMap({this.city}) : super();

  final City city;

  @override
  createState() => _CityMapState();
}

class _CityMapState extends State<CityMap> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Text(
        widget.city.name,
        style: TextStyle(
          fontSize: 32.0,
        ),
      ),
    ));
  }
}
