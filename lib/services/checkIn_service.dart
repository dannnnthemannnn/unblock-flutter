import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/protos/checkIn.pb.dart';
import 'package:unblock/services/endpoint_service.dart';

import 'package:firebase_auth/firebase_auth.dart';

class CheckInService {
  static Future<List<CheckIn>> getCities() async {
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
      return ListCheckInsForUserResponse.fromBuffer(response.bodyBytes)
          .checkIns;
    }
    throw HttpException('List checkIns failed');
  }

  static Future<CheckIn> createCheckIn(String attractionId) async {
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
      return CheckIn.fromBuffer(response.bodyBytes);
    }
    throw HttpException('List checkIns failed');
  }
}
