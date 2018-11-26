import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/protos/checkIn.pb.dart';
import 'package:unblock/services/endpoint_service.dart';

import 'package:firebase_auth/firebase_auth.dart';

class CheckInService {

  static CheckInService checkInService = CheckInService();

  Map<String, CheckIn> _checkInLookup;

  CheckIn getCheckIn(String attractionId) {
    return _checkInLookup[attractionId];
  }

  Future<void> loadCheckIns() async {
    http.Response response = await http.get(
      '${EndpointService.unblockUrl}/v1/checkIns',
      headers: {
        HttpHeaders.authorizationHeader:
            await (await FirebaseAuth.instance.currentUser()).getIdToken(),
      },
    );

    print('Response headers: ${response.headers}');
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 200) {
      List<CheckIn> checkIns = ListCheckInsForUserResponse.fromBuffer(response.bodyBytes)
          .checkIns;
      _checkInLookup = Map.fromIterable(checkIns, key: (checkIn) => checkIn.attractionId, value: (checkIn) => checkIn);
    } else {
      throw HttpException('List checkIns failed');
    }
  }

  Future<CheckIn> createCheckIn(String attractionId) async {
    CreateCheckInRequest request = CreateCheckInRequest()
      ..attractionId = attractionId;
    print(request);
    http.Response response = await http.post(
      '${EndpointService.unblockUrl}/v1/checkIn',
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader:
            await (await FirebaseAuth.instance.currentUser()).getIdToken(),
      },
      body: request.writeToJson(),
    );

    print('Response headers: ${response.headers}');
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 200) {
      CheckIn checkIn = CheckIn.fromBuffer(response.bodyBytes);
      _checkInLookup[attractionId] = checkIn;
      return checkIn;
    }
    throw HttpException('List checkIns failed');
  }
}
