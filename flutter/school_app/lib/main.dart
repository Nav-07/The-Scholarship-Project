import 'package:flutter/material.dart';

class Application extends StatefulWidget {
  createState() => ApplicationState();
}
class ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    // Return a Material App from the Build Function.
    return MaterialApp(
      // The Title of the App
      title: 'School Assignment Tracker',
      // The Home Widget
      home: null,
    );
  }
}

// The main function
void main() => runApp(Application()); // Run the app