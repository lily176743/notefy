// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, file_names

import 'package:app/constants.dart';
import 'package:app/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.title, required this.onPressed});
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: Provider.of<CustomTheme>(context).isTheme
            ? kpink
            : Color(0xFF8CD4CB),
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () => onPressed(),
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 21,
              color: Colors.black,
              fontFamily: 'Roboto',
            ),
          ),
        ),
      ),
    );
  }
}