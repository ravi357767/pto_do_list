// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:pto_do_list/listwrapper.dart';

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
  var taskController = TextEditingController();
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TextField(
                controller: taskController,
                decoration: InputDecoration(
                  hintText: 'Add any task to Remember...',
                  suffixIcon: Icon(Icons.add_task_rounded),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 1.5,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add Task',
                      style: TextStyle(
                        fontFamily: 'Mainfont',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Listwrapper(),
            ],
          ),
        ),
      ),
    );
  }
}

class SetState {}
