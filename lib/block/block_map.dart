import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/protos/block.pb.dart';
import 'package:unblock/block/attraction_widget.dart';
import 'package:unblock/common/zoomable_stack.dart';
import 'package:unblock/common/map_data.dart';
import 'package:unblock/common/map_provider_service.dart';

class BlockMap extends StatefulWidget {
  BlockMap({this.block}) : super();

  final Block block;

  @override
  createState() => _BlockMapState();
}

class _BlockMapState extends State<BlockMap> {
  static const double overlayOpacity = 0.4;
  static const double overlayPadding = 20.0;

  Widget _getTitle() {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: overlayPadding,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 50.0,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(overlayOpacity),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: FittedBox(
                child: Text(
                  widget.block.name,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget _getBackButton() {
    return Positioned(
      top: overlayPadding,
      left: overlayPadding,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withOpacity(overlayOpacity),
        ),
        child: BackButton(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _getOverlay() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _getTitle(),
      ],
    );
  }

  Widget _getBackground() {
    return Container(
      color: Colors.black.withOpacity(0.2),
    );
  }

  Widget _getLoadingBackground() {
    return Positioned(
      top: 0.0,
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          foregroundDecoration: BoxDecoration(
            color: const Color(0x77000000),
          ),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
              'assets/images/background.png',
            ),
          ),
        ),
      ),
    );
  }

  Widget _getMap(Image map) {
    return Positioned.fill(
      child: Container(
        child: FittedBox(
          fit: BoxFit.contain,
          child: map,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        MapData mapData = MapData(
          bounds: widget.block.bounds,
          constraints: constraints,
        );
        Completer<ui.Image> imageCompleter = Completer();
        Image mapImage = Image.network(
          MapProviderService.getMapUrl(mapData),
        );
        mapImage.image.resolve(ImageConfiguration())
          ..addListener(
                  (ImageInfo image, _) => imageCompleter.complete(image.image));

        Rect initialPositions = mapData.getInitialBoundingRect(
            widget.block.bounds.points, constraints);
        return Scaffold(
          body: FutureBuilder(
            future: imageCompleter.future,
            // a previously-obtained Future<String> or null
            builder: (BuildContext context, AsyncSnapshot<ui.Image> snapshot) {
              if (snapshot.hasData) {
                return Stack(
                  children: [
                    ZoomableStack(
                      children: [
                        _getMap(mapImage),
                        _getBackground(),
                      ]
                        ..addAll(widget.block.attractions.map((attraction) =>
                            AttractionWidget(attraction: attraction,
                              constraints: constraints,
                              mapData: mapData,))),
                      initialRect: initialPositions,
                    ),
                    _getOverlay(),
                    _getBackButton(),
                  ],
                );
              } else {
                return Stack(
                  children: [
                    _getLoadingBackground(),
                    Container(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(),
                    ),
                  ],
                );
              }
            },
          ),
        );
      }),
    );
  }
}
