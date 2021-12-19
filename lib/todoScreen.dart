// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:to_do/taskList.dart';

import 'addNewTaskScreen.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("TO-DO LIST"),
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
          toolbarHeight: 100,
        ),
        body: Column(children: [
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: TasksList(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    backgroundColor: Colors.lightGreen,
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          isDismissible: false,
                          context: context,
                          builder: (context) => SingleChildScrollView(
                              child: Container(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: AddNewTaskScreen())));
                    },
                    child: Icon(Icons.add)),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
