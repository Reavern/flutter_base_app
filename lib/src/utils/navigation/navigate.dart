import 'package:flutter/material.dart';
import 'package:base_flutter_app/src/routes.dart';

class Navigate {
  final String route;
  final BuildContext context;
  final Map<String, dynamic> args;

  final RouteMap navigator;

  Navigate({@required this.route, @required this.context, this.args})
      : navigator = RouteMap(route: route, args: args);

  void push() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => navigator.getDestination()),
    );
  }

  void pushReplacement() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => navigator.getDestination()),
    );
  }
}
