// ignore: file_names
// ignore: use_key_in_widget_constructors
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) toggleCheckBoxState;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  MyCheckBox({required this.checkBoxState, required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightGreen,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
