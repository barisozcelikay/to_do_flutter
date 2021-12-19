// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TaskInfoScreen extends StatefulWidget {
  const TaskInfoScreen({Key? key}) : super(key: key);
  static String id = "task_info";

  @override
  _TaskInfoScreenState createState() => _TaskInfoScreenState();
}

class _TaskInfoScreenState extends State<TaskInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Expanded(
                  child: Column(
                    children: [Text("Title"), Text("baris")],
                  ),
                )),
            Container(
              child: Column(
                children: [Text("Paragraph"), Text("paragraph")],
              ),
            ),
            Container(
              child: Column(
                children: [Text("Date"), Text("date time")],
              ),
            )
          ],
        ),
      ),
    );
  }
}
