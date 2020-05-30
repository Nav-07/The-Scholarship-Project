import 'package:flutter/material.dart';
import 'package:school_app/Screens/Home.dart';

class Navigation {
  static int currentIndex = 0;
  static Widget getCurrentState() {
    Widget returnValue; // This is the return value of this function
    if (currentIndex == 0)
      returnValue = Home();
    return returnValue; // Return the widget based on the currentIndex Variable.
  }
}
class Style {
  static const double ExtraSmall = 10.0;
  static const double Small = 15.0;
  static const double Medium = 20.0;
  static const double Large = 25.0;

  static TextStyle Custom(double ptSize, String fontFamily, FontWeight weight, {FontStyle style = FontStyle.normal}) {
    return TextStyle(
      fontSize: ptSize,
      fontFamily: fontFamily,
      fontWeight: weight,
      fontStyle: style
    );
  }
}