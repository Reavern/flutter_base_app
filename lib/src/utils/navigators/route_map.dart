import 'package:flutter/material.dart';

class RouteMap {
  final String route;
  final Map<String, dynamic> args;

  RouteMap({@required this.route, this.args});

  Widget getDestination() {
    switch (route) {
      case '/':
        return Container();
    }
  }
}
