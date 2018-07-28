import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/unblock_service.dart';
import 'package:unblock/city/city_map.dart';
import 'package:unblock/protos/city.pb.dart';

class Cities extends StatefulWidget {
  @override
  createState() => _CitiesState();
}

class _CitiesState extends State<Cities> {
  List<City> _cities;
  bool _loading = true;

  @override
  initState() {
    super.initState();

    _getCities();
    Future.delayed(
        Duration(
          seconds: 4,
        ),
        () => setState(() {}));
  }

  void _getCities() async {
    _cities = await UnblockService.getCities();
    print(_cities.where((city) => city.imageFilename.isNotEmpty));

    // Keep loading until all the network images are loaded
    Future.wait(_cities.map((city) {
      Completer image = Completer();
      UnblockService
          .getStaticImage(city.imageFilename)
          .image
          .resolve(ImageConfiguration())
            ..addListener((_, __) => image.complete());
      return image.future;
    })).then((_) => setState(() => _loading = false));
  }

  Widget _getBackground() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      foregroundDecoration: BoxDecoration(
        color: const Color(0xBB000000),
      ),
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset(
          'assets/images/cityListBackground.png',
          gaplessPlayback: true,
        ),
      ),
    );
  }

  Widget _getCityButton(City city) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => CityMap(
                      city: city,
                    ),
              ));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Stack(
            children: <Widget>[
              Container(
                height: 130.0,
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0x00000000),
                      const Color(0x22000000),
                      const Color(0x66000000)
                    ],
                  ),
                ),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: UnblockService.getStaticImage(city.imageFilename),
                ),
              ),
              Positioned.fill(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.only(
                    bottom: 10.0,
                  ),
                  child: Text(city.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getCityButtons() {
    return List<Widget>()
      ..addAll(_cities
          .where((city) =>
              city.imageFilename.isNotEmpty &&
              city.status == CityStatus.CITY_LIVE)
          .map(_getCityButton))
      ..addAll(_cities
          .where((city) =>
              city.imageFilename.isNotEmpty &&
              city.status == CityStatus.CITY_COMING_SOON)
          .map(_getCityButton));
  }

  Widget _getCitiesList() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Container(
              height: 30.0,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'CITIES',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                shrinkWrap: true,
                children: _getCityButtons(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getForeground() {
    return _loading
        ? Container(
            alignment: Alignment.center,
            child: CircularProgressIndicator(),
          )
        : _getCitiesList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _getBackground(),
          _getForeground(),
        ],
      ),
    );
  }
}
