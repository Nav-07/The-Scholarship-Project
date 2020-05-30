import 'package:flutter/material.dart';
import 'package:school_app/AppData.dart';

class Home extends StatefulWidget {
  createState() => HomeState();
}
class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Material(
            elevation: 5.0,
            child: ListTile(
              title: Text('No Assignments', style: Style.Custom(Style.Medium, 'Montserrat', FontWeight.normal),)
            ),
          ),
        ),
      ],
    );
  }
}