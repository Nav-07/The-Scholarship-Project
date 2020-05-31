// This file basically handles all the 'production' handling and has all the logic code. it takes care of all the models and rendering in general, this is just a test practise and is definately not the actual logic is going to look like.

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
              // show the widget defined inside showDetails()

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
      children: <Widget>[
        // editing the name of the assignment
        Container( // the edit name container
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: ListTile(
            title: Text(assignment.name, style: Style.Custom(Style.Medium, 'Montserrat', FontWeight.normal),),
            trailing: Icon(Icons.edit), // the trailing would give an effect that this value is editable.
          ),
        ),
        // editing the subject of the assignment
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: ListTile(
            title: Text(assignment.subject, style: Style.Custom(Style.Medium, 'Montserrat', FontWeight.normal),),
            trailing: Icon(Icons.edit),
          ),
        ),
      ],
    ),
  );
}

// the data class holds all the current state data and can be modified outside of the class.
class TestDataData {
  static int currentState = 0;
  static TestAssignment currentAssignment = null;

  static void reset() { // this function resets the whole screen and returns it back to normal;
    currentState = 0;
    currentAssignment = null;
  }
}
// This class simplifies navigation
class TestData extends StatefulWidget {
  createState() => TestDataState();
}
class TestDataState extends State<TestData> {
  Widget showList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: assignments.length,
      itemBuilder: (BuildContext context, int index) {
        return Container( // use the container for margin
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Material( // material for elevation
            elevation: 5.0,
            child: ListTile(
              title: Text(assignments[index].name, style: Style.Custom(Style.Medium, 'Montserrat', FontWeight.normal),),
              onTap: () {
                // set the current state to 1 and current assignments to 1
                setState(() {
                  TestDataData.currentAssignment = assignments[index];
                  TestDataData.currentState = 1;
                });
              },
            ),
          ),
        );
      },
    );
  } // show the list of assignments
  Widget showDetails() {
    return Column(
      children: <Widget>[
        // container for edit name
        Container(
          child: ListTile(
            title: Text(TestDataData.currentAssignment.name, style: Style.Custom(Style.Medium, 'Montserrat', FontWeight.normal),),
            trailing: Icon(Icons.edit, color: Colors.black,),
          )
        ),
        // container for edit subject
        Container(
          child: ListTile(
            title: Text(TestDataData.currentAssignment.subject, style: Style.Custom(Style.Medium, 'Montserrat', FontWeight.normal),),
            trailing: Icon(Icons.edit, color: Colors.black),
          ),
        ),
      ],
    );
  } // show the details of the assignment

  Widget getCurrentState() {
    if (TestDataData.currentState == 0)
      return showList();
    else
      return showDetails();
  } // get current state of the screen by using the currentState variable
  @override
  Widget build(BuildContext context) {
    return getCurrentState();
  }
}