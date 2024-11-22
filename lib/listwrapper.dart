// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Listwrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff60efff),
                Color(0xff0061ff),
              ],
            ),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: const Color.fromARGB(255, 252, 241, 241),
              width: 2,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Text(
                  'This is a Text Message',
                  style: TextStyle(
                    fontFamily: 'Mainfont',
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 30,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
