// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:to_do/Widgets/taskList.dart';

import '../Class/task.dart';
import 'addTaskScreen.dart';

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Task> tasks = [];

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
            child: tasks.length > 0
                ? Container(
                    padding: EdgeInsets.only(top: 20),
                    child: TasksList(tasks: tasks),
                  )
                : Center(
                    child: Text("No Tasks"),
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
                                  child: AddTaskScreen(
                                    callBack: (newTaskTitle, newTaskParagraph) {
                                      setState(() {
                                        tasks.add(Task(
                                            title: newTaskTitle,
                                            paragraph: newTaskParagraph,
                                            date: DateTime.now()));
                                      });
                                      Navigator.pop(context);
                                    },
                                  ))));
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
