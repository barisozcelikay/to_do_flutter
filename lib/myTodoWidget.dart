// ignore_for_file: prefer_const_literals_to_create_immutables, file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class MyTodoWidget extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final DateTime date;

  MyTodoWidget(
      {required this.isChecked, required this.taskTitle, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: !isChecked ? Colors.grey[300] : Colors.grey[600],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        subtitle: Text(date.day.toString() +
            "-" +
            date.month.toString() +
            "-" +
            date.year.toString()),
        title: Row(
          children: [
            Text(
              taskTitle,
            ),
            const SizedBox(
              width: 10,
            ),
            // ignore: prefer_const_constructors
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
        trailing: Checkbox(
          activeColor: Colors.lightGreen,
          value: isChecked, onChanged: (bool? value) {},
          //onChanged: toggleCheckBoxState,
        ),
      ),
    );
  }
}

/*
(bool? checkBoxState) {
              setState(() {
                isChecked = checkBoxState ?? true;
              });
            }
*/