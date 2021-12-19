import 'package:flutter/material.dart';

class TodoInfoScreen extends StatefulWidget {
  const TodoInfoScreen({Key? key}) : super(key: key);

  @override
  _TodoInfoScreenState createState() => _TodoInfoScreenState();
}

class _TodoInfoScreenState extends State<TodoInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                      children: [Text("Baris"), Text("baris")],
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
      ),
    );
  }
}
