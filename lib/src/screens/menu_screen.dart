import 'package:flutter/material.dart';

import 'package:base_flutter_app/src/utils/navigation.dart';

import '../widgets/buttons.dart';
import '../widgets/inputs.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              PrimaryButton(
                onPressed: () {
                  Navigate(context: context, route: '/counter').push();
                },
                text: "Primary",
              ),
              Spacer(),
              SecondaryButton(
                onPressed: () {
                  Navigate(context: context, route: '/list').push();
                },
                text: "Secondary",
              ),
              Spacer(),
              PrimaryButton(
                onPressed: null,
                text: "Disabled",
              ),
            ],
          ),
          Row(
            children: <Widget>[
              NavigationButton(
                onPressed: () {},
                iconState: 'prev',
              ),
              Spacer(),
              NavigationButton(
                onPressed: () {},
                iconState: 'next',
              ),
              Spacer(),
              NavigationButton(
                onPressed: null,
                iconState: 'prev',
              ),
              Spacer(),
              NavigationButton(
                onPressed: null,
                iconState: 'next',
              ),
            ],
          ),
          TextInput(
            hintText: 'Required Field',
            initialText: '',
            error: false,
          ),
          TextInput(
            initialText: 'Typing',
            error: false,
          ),
          TextInput(
            initialText: 'error@mail.com',
            error: true,
          ),
          DropdownInput(
            value: null,
          ),
          DropdownInput(
            value: 'Option selected',
          ),
          Row(
            children: <Widget>[
              Checkbox(
                value: false,
                activeColor: Theme.of(context).buttonColor,
                onChanged: (_) {},
              ),
              Checkbox(
                value: true,
                
                activeColor: Theme.of(context).buttonColor,
                onChanged: (_) {},
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                value: 0,
                activeColor: Theme.of(context).buttonColor,
                onChanged: (_) {},
              ),
              Switch(
                value: false,
                onChanged: (_) {},
                activeColor: Theme.of(context).buttonColor,
              ),
              Switch(
                value: true,
                onChanged: (_) {},
                activeColor: Theme.of(context).buttonColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
