import 'package:flutter/material.dart';
import 'package:school_app/Screens/Home.dart';
import 'package:school_app/Screens/Tasks.dart';

class Navigation { // Essential for Navigation.
  static int currentIndex = 0; // This value is used in the BottomNavigationBar
  static Widget getCurrentState() {
    Widget returnValue; // This is the return value of this function
    if (currentIndex == 0)
      returnValue = Home(); // returnValue is equal to Home if currentIndex is 0.
    else if (currentIndex == 1)
      returnValue = Tasks();
    return returnValue; // Return the widget based on the currentIndex Variable.
  }
}
class Style { // this call is essential to reduce the headache in the main code and foucs more on the functions of the app.
  // these are the font sizes that can be used for the upcoming methods.
  static const double ExtraSmall = 10.0;
  static const double Small = 15.0;
  static const double Medium = 20.0;
  static const double Large = 25.0;

  // this method returns a textstyle object, reduces the complexity in the main code.
  static TextStyle Custom(double ptSize, String fontFamily, FontWeight weight, {FontStyle style = FontStyle.normal}) {
    return TextStyle(
      fontSize: ptSize,
      fontFamily: fontFamily,
      fontWeight: weight,
      fontStyle: style
    );
  }
}