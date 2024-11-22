import 'package:flutter/material.dart';

void main() {
  runApp(ToDoList());
}

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do List For Practice",
      theme: ThemeData(
        primaryColor: Colors.white10,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),
      ),
      body: Container(
        child: Text("Hello world"),
      ),
    );
  }
}
