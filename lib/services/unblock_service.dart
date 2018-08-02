import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/services/login_service.dart';
import 'package:unblock/protos/city.pb.dart';

class UnblockService {
  //static const String unblockUrl = 'http://10.0.2.2:8080';
  static const String unblockUrl = 'https://unblock-backend.herokuapp.com';

  static Future<List<City>> getCities() async {
    http.Response response = await http
        .get(
      '$unblockUrl/v1/cities',
      headers: {
        HttpHeaders.AUTHORIZATION: LoginService.authToken,
      },
    );

    print('Response headers: ${response.headers}');
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 200) {
      return ListCitiesResponse.fromBuffer(response.bodyBytes).cities;
    }
    throw HttpException('List cities failed');
  }

  static String getStaticImagePath(String path ) {
    print('path' + path);
    return '$unblockUrl/static/images/$path';
  }
}
