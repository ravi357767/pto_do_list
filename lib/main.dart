// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(ToDoList());
}

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do List For Practice",
      debugShowCheckedModeBanner: false,
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
        title: Center(
            child: Text(
          "To Do List",
          style: TextStyle(
            fontFamily: 'Mainfont',
            fontWeight: FontWeight.w800,
            fontSize: 30,
          ),
        )),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        height: 700,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffff930f),
              Color(0xfffff95b),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff0061ff),
                    Color(0xff60efff),
                  ],
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
