// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'Todo.dart';
import 'myTodoWidget.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Todo> tasks = [
    Todo(title: "Task 1", paragraph: "This is task 1", date: DateTime.now()),
    Todo(title: "Task 2", paragraph: "This is task 2", date: DateTime.now()),
    Todo(title: "Task 3", paragraph: "This is task 3", date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MyTodoWidget(
          isChecked: tasks[0].isDone,
          taskTitle: tasks[0].title,
          date: tasks[0].date,
        ),
        MyTodoWidget(
          isChecked: tasks[1].isDone,
          taskTitle: tasks[1].title,
          date: tasks[1].date,
        ),
        MyTodoWidget(
          isChecked: tasks[2].isDone,
          taskTitle: tasks[2].title,
          date: tasks[2].date,
        ),
      ],
    );
  }
}
