import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:async';

import 'package:unblock/protos/login.pb.dart';
import 'package:unblock/protos/user.pb.dart';

class LoginService {
  //static const String unblockUrl = 'http://10.0.2.2:8080/v1';
  static const String unblockUrl = 'https://unblock-backend.herokuapp.com/v1';

  static String authToken;

  static Future<bool> login(String usernameOrEmail, String password) async {
    print('logging  in');
    LoginRequest loginRequest = LoginRequest()
      ..usernameOrEmail = usernameOrEmail
      ..password = password;
    http.Response response = await http
        .post(
      '$unblockUrl/login',
      headers: {
        HttpHeaders.CONTENT_TYPE: "application/json",
      },
      body: loginRequest.writeToJson(),
    );

    print("Response headers: ${response.headers}");
    print("Response status: ${response.statusCode}");
    if (response.statusCode == 200) {
      print(User.fromBuffer(response.bodyBytes));
      print(response.headers['authorization']);
      authToken = response.headers['authorization'];
    }
    return response.statusCode == 200;
  }
}
