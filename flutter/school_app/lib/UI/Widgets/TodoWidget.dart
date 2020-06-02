import 'package:flutter/material.dart';
import 'package:school_app/UI/Style.dart';

// The Stateful Widget Class
class TodoWidget extends StatefulWidget {
  createState() => TodoWidgetState();
}
// The extended state class
class TodoWidgetState extends State<TodoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10), // can be tweaked
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xff3498db), // Set the color similar to the top notch and tab bar color
        child: Row(
          children: <Widget>[
            Checkbox(
              value: false,
              onChanged: (bool value) {
                // change the value
              },
            ), // the checkbox to mark assignments done
            Text(
              'Don\'t Know',
              style: Custom.CustomStyle(FontSize.ExtraLarge, Colors.white, FontWeight.bold, 'Montserrat'),
            ), // the text displays the name of the assignment
          ],
        ),
      ),
    );
  }
}