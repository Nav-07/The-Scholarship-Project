import 'package:flutter/material.dart';
import 'package:school_app/UI/Widgets/TodoWidget.dart';

// The StatefulWidget
class Home extends StatefulWidget {
  createState() => HomeState();
}
// The State that extends the widget
class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container( // add the column anyway to add extra margin later on in production.
      child: Column(
        children: <Widget>[
          // This is where the list of assignment resides.
          getList()
        ],
      ),
    );
  }

  Widget getList() {
    // this method returns a list of assignments as a list tile, with a radio button or similar.
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: TodoWidget(),
        );
      },
    );
  }
}