// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, prefer_const_constructors, prefer_final_fields, file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddTaskScreen extends StatelessWidget {
  final Function(String, String) callBack;
  AddTaskScreen({required this.callBack});

  late String title;
  late String paragraph;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              right: 10.0,
              top: 15.0,
              // ignore: duplicate_ignore
              child: InkResponse(
                onTap: () {
                  Navigator.of(context).pop();
                },
                // ignore: prefer_const_constructors
                child: CircleAvatar(
                  radius: 20,
                  child: Icon(
                    Icons.close,
                    size: 25,
                  ),
                  backgroundColor: Colors.red,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Add Task",
                    style:
                        TextStyle(color: Colors.lightGreen[500], fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    autofocus: true,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Enter title'),
                    onChanged: (newTitle) {
                      title = newTitle;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20, top: 30),
                  child: TextField(
                    autofocus: true,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter paragraph'),
                    onChanged: (newParagraph) {
                      paragraph = newParagraph;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: FloatingActionButton(
                      backgroundColor: Colors.lightGreen,
                      onPressed: () => callBack(title, paragraph),
                      child: Icon(Icons.add)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
