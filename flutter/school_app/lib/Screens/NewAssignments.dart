import 'package:flutter/material.dart';
import 'package:school_app/AppData.dart';

class NewAssignment extends StatefulWidget {
  createState() => NewAssignmentState();
}
class NewAssignmentState extends State<NewAssignment> {
  void createAssignment({TextEditingController name, TextEditingController subject}) {
    // create the assignment object from the TestData.dart file
    // convert data to any forms required
    // throw any warning if required
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController subjectController = TextEditingController();

    return Column(
      children: <Widget>[
        // create the container for assignment name
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: ListTile(
            title: TextFormField(
              controller: nameController, // set the controller to enable input
              decoration: InputDecoration(
                hintText: "Assignment Name",
                hintStyle: Style.Custom(Style.Medium, 'Montserrat', FontWeight.normal, color: Colors.grey),
              ),
              style: Style.Custom(Style.Medium, 'Montserrat', FontWeight.normal, color: Colors.black),
            ),
          ),
        ),
        // create the container for assignment subject
        // sublists
        // done button
      ],
    );
  }
}