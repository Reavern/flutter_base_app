import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {

  final String title;

  NotFoundScreen({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: buildMainBody(context),
    );
  }

  Widget buildMainBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text("NOT FOUND")
    );
  }
}

