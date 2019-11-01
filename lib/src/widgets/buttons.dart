import 'package:flutter/material.dart';

const double BORDER_RADIUS = 10.0;
const double FONT_SIZE = 20.0;
const double BUTTON_HEIGHT = 45.0;

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  PrimaryButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
        side: BorderSide(color: Colors.transparent),
      ),
      height: BUTTON_HEIGHT,
      color: Theme.of(context).buttonColor,
      textColor: Colors.white,
      disabledColor: Theme.of(context).disabledColor,
      disabledTextColor: Theme.of(context).hintColor,
      child: Text(
        text,
        style: TextStyle(fontSize: FONT_SIZE),
      ),
      onPressed: onPressed,
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  SecondaryButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(BORDER_RADIUS),
        side: BorderSide(color: Theme.of(context).buttonColor),
      ),
      height: BUTTON_HEIGHT,
      elevation: 0,
      color: Colors.transparent,
      textColor: Theme.of(context).buttonColor,
      disabledColor: Theme.of(context).disabledColor,
      disabledTextColor: Theme.of(context).hintColor,
      child: Text(
        text,
        style: TextStyle(fontSize: FONT_SIZE),
      ),
      onPressed: onPressed,
    );
  }
}

class NavigationButton extends StatelessWidget {
  final Function onPressed;
  final String iconState;

  NavigationButton({this.onPressed, this.iconState});

  IconData _getIcon() {
    IconData icon;

    switch (iconState) {
      case 'next':
        icon = Icons.navigate_next;
        break;
      case 'prev':
        icon = Icons.navigate_before;
        break;
    }

    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: CircleBorder(),
      height: BUTTON_HEIGHT,
      elevation: 0,
      color: Theme.of(context).buttonColor,
      disabledColor: Theme.of(context).disabledColor,
      child: Icon(
        _getIcon(),
        color: Colors.white,
        size: 35.0,
      ),
      onPressed: onPressed,
    );
  }
}
