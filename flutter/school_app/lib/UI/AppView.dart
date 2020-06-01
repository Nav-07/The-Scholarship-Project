import 'package:flutter/material.dart';

class AppView extends StatefulWidget {
  createState() => AppViewState();
}
class AppViewState extends State<AppView> {
  Color topNotchColor = Color(0xff3498db);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: topNotchColor,
          elevation: 0,
          title: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.check)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            // This is going to be the top notch
            Container(
              height: MediaQuery.of(context).size.height*0.17,
              decoration: BoxDecoration(
                color: topNotchColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)
                ),
              ),
            ),
            // This is where all the tabs reside
          ],
        ),
      ),
    );
  }
}