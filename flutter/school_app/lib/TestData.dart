import 'package:flutter/material.dart';
import 'package:school_app/AppData.dart';

class TestAssignment { // This is just a sample model
  String name, subject; // takes in these variables to be represented in the sample prototype model
  DateTime due;

  TestAssignment({this.name, this.subject, this.due});
}
var assignments = [ // Use this data to represent in the tasks page
  TestAssignment(name: 'Monologue', subject: 'English', due: DateTime.now()),
  TestAssignment(name: 'Test', subject: 'History', due: DateTime.now()),
  TestAssignment(name: 'Riddles', subject: 'Thinking Skills', due: DateTime.now()),
];
Widget createList() {
  // Return a ListView.builder() for the objects
  return ListView.builder(
    shrinkWrap: true, // this should be true because the list is inside a singlechildscrollview. 
    itemCount: assignments.length, // set the value dynamically, if there are any changes later in production
    itemBuilder: (BuildContext context, int index) {
      return Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Material(
          elevation: 5.0, // elevate the object to make it look like a list tile
          child: ListTile(
            title: Text(assignments[index].name, style: Style.Custom(Style.Medium, 'Montserrat', FontWeight.normal),),

            onTap: () {
              // Todo: trigger the show details function
            },
          ),
        ),
      );
    },
  );
}

Widget showDetails(TestAssignment assignment) {
  return Container(
    child: Column(
    ),
  );
}