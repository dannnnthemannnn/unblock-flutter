import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/protos/attraction.pb.dart';
import 'package:unblock/protos/checkIn.pb.dart';
import 'package:unblock/services/checkIn_service.dart';

class AttractionInfo extends StatefulWidget {
  static const int mapFlex = 1;
  static const int infoFlex = 2;

  AttractionInfo({
    this.attraction,
  });

  final Attraction attraction;

  @override
  createState() => _AttractionInfoState();
}

class _AttractionInfoState extends State<AttractionInfo> {
  static const double horizontalMargin = 30.0;
  static const double verticalMargin = 20.0;

  CheckIn _checkIn;

  @override
  initState() {
    super.initState();
    _checkIn = CheckInService.checkInService.getCheckIn(widget.attraction.id);
  }

  Future<void> _checkInToAttraction() async {
    try {
      _checkIn = await CheckInService.checkInService
          .createCheckIn(this.widget.attraction.id);
      print(_checkIn);
    } catch (e) {
      print('Exception in creating a check in:');
      print(e);
    }
  }

  Widget _getTitle() {
    return Padding(
      padding: const EdgeInsets.only(
        top: verticalMargin,
        left: horizontalMargin,
        right: horizontalMargin,
      ),
      child: Text(
        widget.attraction.name,
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
        widget.attraction.description,
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

  Widget _getHorizontalRule() {
    return Container(
      height: 2.0,
      width: 25.0,
      margin: const EdgeInsets.only(
        top: verticalMargin,
        left: horizontalMargin,
        right: horizontalMargin,
      ),
      color: Colors.white,
    );
  }

  Widget _getCheckInInfo() {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(
      _checkIn.createdTime.toInt(),
      isUtc: true,
    ).toLocal();
    return Padding(
      padding: const EdgeInsets.only(
        top: verticalMargin,
        left: horizontalMargin,
        right: horizontalMargin,
      ),
      child: Text(
        'You checked in here on ${date.month}/${date.day}/${date.year}',
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
      onTap: _checkInToAttraction,
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
      _getHorizontalRule(),
    ];

    if (_checkIn == null) {
      widgets.add(_getCheckInButton());
    } else {
      widgets.add(_getCheckInInfo());
    }

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
