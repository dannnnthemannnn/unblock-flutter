import 'package:unblock/signIn.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() => runApp(new UnBlockApp());

class UnBlockApp extends StatelessWidget {
  Route _getRoute(RouteSettings settings) {
    Route page;
    switch (settings.name) {
      case "/":
        page = new PageRouteBuilder(
          pageBuilder: (_, __, ___) => SignIn(),
        );
        break;
    }
    return page;
  }

  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      title: 'Flutter Demo',
      color: Colors.blue,
      onGenerateRoute: _getRoute,
      initialRoute: '/',
    );
  }
}
