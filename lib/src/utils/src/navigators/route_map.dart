import 'package:flutter/material.dart';

import 'package:base_flutter_app/src/screens/screens_export.dart';

class RouteMap {
  final String route;
  final Map<String, dynamic> args;

  RouteMap({@required this.route, this.args});

  Widget getDestination() {
    switch (route) {
      case '/':
        return MenuScreen();
      case '/counter':
        return CounterScreen(title: "Counter",);
      case '/list':
        return ListItemScreen(title: "List Items",);


      default:
        return NotFoundScreen(title: "Not Found",);
    }
  }
}
