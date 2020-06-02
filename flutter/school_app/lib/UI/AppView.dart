import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_app/UI/Pages/Home.dart';
import 'package:school_app/UI/Pages/Settings.dart';
import 'package:school_app/UI/Style.dart';

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
              Tab(icon: Icon(FontAwesomeIcons.home)),
              Tab(icon: Icon(FontAwesomeIcons.database)),
              Tab(icon: Icon(FontAwesomeIcons.cog)),
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            // This is going to be the top notch
            Container(
              child: Stack(
                children: <Widget>[
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
                  Container(
                    margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height*0.17*0.5)-FontSize.ExtraLarge, left: 25),
                    child: Text(
                      'High Schooler',
                      style: Custom.CustomStyle(FontSize.ExtraLarge, Colors.white, FontWeight.bold, 'Montserrat'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 65,
              height: 65,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.17-65/2, left: MediaQuery.of(context).size.width*0.5-65/2),
              child: FloatingActionButton(
                child: Icon(FontAwesomeIcons.plus, size: FontSize.DoubleExtraLarge, color: Colors.black,),
                backgroundColor: Colors.white,
                onPressed: () {
                  // show the dialog box for new assignment  
                },
              ),
            ),
            // This is where all the tabs reside
            Container(
              child: TabBarView( // the tab controller
                children: <Widget>[
                  // get the home page
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.17+65/2+10),
                    child: SingleChildScrollView(
                      child: Home(),
                    ),
                  ),
                  // get the storage page
                  Container(),
                  // get the settings page
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.17+65/2+10),
                    child: SingleChildScrollView(
                      child: Settings(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}