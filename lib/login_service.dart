import 'package:http/http.dart' as http;
import 'dart:io';

class LoginService {
  static const String unblockUrl = 'http://10.0.2.2:8080/v1';

  static void login(String usernameOrEmail, String password) {
    http
        .post(
      '$unblockUrl/login',
      headers: {
        HttpHeaders.CONTENT_TYPE: "application/json",
        HttpHeaders.ACCEPT: "application/json"
      },
      body: '{usernameOrEmail: "$usernameOrEmail", password: "$password"}',
    )
        .then((response) {
      print("Response headers: ${response.headers}");
      print("Response status: ${response.statusCode}");
      print("Response body: ${response.body}");
    });
  }
}
