import 'package:flutter/material.dart';

import 'UI/AppView.dart';

// Create the Flutter App by Defining an Application Class
class Application extends StatefulWidget {
  createState() => ApplicationState();
}
class ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'High Schooler',
      debugShowCheckedModeBanner: false,
      home: AppView(),
    );
  }
}

// Run the App
void main() => runApp(Application());