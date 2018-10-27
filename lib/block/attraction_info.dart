import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/protos/attraction.pb.dart';

class AttractionInfo extends StatelessWidget {
  static const double horizontalMargin = 30.0;
  static const double verticalMargin = 20.0;
  static const int mapFlex = 1;
  static const int infoFlex = 2;

  AttractionInfo({
    this.attraction,
  });

  final Attraction attraction;

  Widget _getTitle() {
    return Padding(
      padding: const EdgeInsets.only(
        top: verticalMargin,
        left: horizontalMargin,
        right: horizontalMargin,
      ),
      child: Text(
        attraction.name,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _getDescription() {
    return Padding(
      padding: const EdgeInsets.only(
        top: verticalMargin,
        left: horizontalMargin,
        right: horizontalMargin,
      ),
      child: Text(
        attraction.description,
        textAlign: TextAlign.center,
        style: TextStyle(
          height: 1.2,
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.6,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _getCheckInButton() {
    return GestureDetector(
      child: Container(
        height: 52.0,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          top: verticalMargin,
          left: horizontalMargin,
          right: horizontalMargin,
        ),
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Text(
          'Check In',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _getAttractionDisplay() {
    List<Widget> widgets = [
      _getTitle(),
      _getDescription(),
      _getCheckInButton(),
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            25.0,
          ),
        ),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: widgets,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: AttractionInfo.mapFlex,
          child: Container(),
        ),
        Expanded(
          flex: AttractionInfo.infoFlex,
          child: _getAttractionDisplay(),
        ),
      ],
    );
  }
}
