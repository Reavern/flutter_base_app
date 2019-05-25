import 'package:flutter/material.dart';

import 'package:base_flutter_app/src/utils/navigators/main.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildMainBody(context),
    );
  }

  Widget buildMainBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MenuButton(
            onPressed: () => {
              Navigate(context: context, route: '/counter').push()
            },
            text: "Counter",
          )
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final Function onPressed;
  String text = "Button";

  MenuButton({@required this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      color: Theme.of(context).buttonColor,
      disabledColor: Theme.of(context).disabledColor,
      textColor: Theme.of(context).primaryColor,
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
      onPressed: onPressed,
    );
  }
}
