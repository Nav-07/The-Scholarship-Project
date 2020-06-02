import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_app/UI/Style.dart';

// Settings screen contains all the data like the color scheme for the app, etc.
class Settings extends StatefulWidget {
  createState() => SettingsState();
}
class SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // here is the color scheme edit option
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Material(
            color: Color(0xff3498db),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: ListTile(
              title: Text('Edit Color Scheme', style: Custom.CustomStyle(FontSize.Large, Colors.white, FontWeight.bold, 'Montserrat'),),
              leading: Icon(FontAwesomeIcons.laptopCode, color: Colors.white,),
            ),
          ),
        ),

      ],
    );
  }
}