import 'package:flutter/material.dart';

const double FONT_SIZE = 18.0;
const double ERROR_FONT_SIZE = 14.0;

class TextInput extends StatelessWidget {
  final String hintText;
  final String initialText;
  final bool error;

  TextInput({this.hintText, this.initialText, this.error});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController()
        ..text = initialText.isNotEmpty ? initialText : '',
      cursorColor: Theme.of(context).cursorColor,
      style: TextStyle(
        color: Theme.of(context).cursorColor,
        fontSize: FONT_SIZE,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 25.0,
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: FONT_SIZE,
          color: Theme.of(context).hintColor,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
        errorText: error ? 'Something is wrong' : null,
        errorStyle: TextStyle(
          fontSize: 0, //ERROR_FONT_SIZE,
          color: Theme.of(context).errorColor,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).errorColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        // suffixIcon: error
        //     ? Icon(
        //         Icons.warning,
        //         color: Theme.of(context).errorColor,
        //       )
        //     : null,
      ),
    );
  }
}

class DropdownInput extends StatelessWidget {
  final String value;

  DropdownInput({this.value});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 25.0,
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,
            value: value,
            hint: Text('Select an option'),
            icon: Icon(Icons.keyboard_arrow_down),
            // icon: Icon(Icons.keyboard_arrow_down),
            items:
                <String>['Option selected', 'B', 'C', 'D'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Theme.of(context).cursorColor,
      style: TextStyle(
        color: Theme.of(context).cursorColor,
        fontSize: FONT_SIZE,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 25.0,
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: "Find services...",
        hintStyle: TextStyle(
          fontSize: FONT_SIZE,
          color: Theme.of(context).hintColor,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
