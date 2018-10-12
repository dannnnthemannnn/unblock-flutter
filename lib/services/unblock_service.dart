import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:unblock/protos/city.pb.dart';

import 'package:firebase_auth/firebase_auth.dart';

class UnblockService {
  static const String unblockUrl = 'http://10.0.2.2:8080';

  //static const String unblockUrl = 'https://unblock-backend.herokuapp.com';

  static Future<List<City>> getCities() async {
    http.Response response = await http.get(
      '$unblockUrl/v1/cities',
      headers: {
        HttpHeaders.authorizationHeader:
            await (await FirebaseAuth.instance.currentUser()).getIdToken(),
      },
    );

    print('Response headers: ${response.headers}');
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 200) {
      return ListCitiesResponse.fromBuffer(response.bodyBytes).cities;
    }
    throw HttpException('List cities failed');
  }

  static Image getStaticImage(String path) {
    return Image.network(
      '$unblockUrl/static/images/$path'
    );
  }
}
