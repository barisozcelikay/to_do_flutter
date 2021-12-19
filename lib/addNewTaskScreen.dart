// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, prefer_const_constructors, prefer_final_fields, file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddNewTaskScreen extends StatelessWidget {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _paragraphController = TextEditingController();

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
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Enter title'),
                    controller: _titleController,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20, top: 30),
                  child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter paragraph'),
                    controller: _paragraphController,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: FloatingActionButton(
                      backgroundColor: Colors.lightGreen,
                      onPressed: () {
                        // ignore: avoid_print
                        print("eklendi");
                      },
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
