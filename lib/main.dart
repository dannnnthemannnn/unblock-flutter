import 'package:unblock/login/login.dart';
import 'package:unblock/cities/cities.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() => runApp(new UnblockApp());

class UnblockApp extends StatelessWidget {

  Route _getRoute(RouteSettings settings) {
    Route page;
    switch (settings.name) {
      case "/":
        page = PageRouteBuilder(
          pageBuilder: (_, __, ___) => LogIn(),
        );
        break;
      case "/cities":
        page = PageRouteBuilder(
          pageBuilder: (_, __, ___) => Cities(),
        );
        break;
    }
    return page;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is a bug where the input decorations use this value
        // for border color
        hintColor: Colors.white,
        primaryColor: Colors.white,
      ),
      color: Colors.white,
      onGenerateRoute: _getRoute,
      initialRoute: '/',
    );
  }
}
