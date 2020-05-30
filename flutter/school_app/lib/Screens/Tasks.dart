import 'package:flutter/material.dart';
import 'package:school_app/AppData.dart';

class Tasks extends StatefulWidget {
  createState() => TasksState();
}
class TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Show a Dummy Assignment for Prototype Purposes
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Material(
            elevation: 5.0,
            child: ListTile(
              title: Text('English Monologue', style: Style.Custom(Style.Medium, 'Montserrat', FontWeight.normal),)
            ),
          ),
        ),
      ],
    );
  }
}