// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:to_do/todoInfoScreen.dart';
import 'package:to_do/todoScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: TodoScreen(),
    );
  }
}