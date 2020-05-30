import 'package:flutter/material.dart';
import 'package:school_app/AppData.dart';
import 'package:school_app/TestData.dart';

class Tasks extends StatefulWidget {
  createState() => TasksState();
}
class TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        createList(),
      ],
    );
  }
}