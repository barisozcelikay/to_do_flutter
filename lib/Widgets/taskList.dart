// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Class/task.dart';
import 'taskTile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
              isChecked: widget.tasks[index].isDone,
              taskTitle: widget.tasks[index].title,
              checkBoxCallBack: (bool? checkBoxState) {
                setState(() {
                  widget.tasks[index].toggleDone();
                });
              });
        });
  }
}
