import 'package:flutter/material.dart';

// The Custom Class is Responsible for all the custom styles.
class Custom {
  static TextStyle CustomStyle(double ptSize, Color color, FontWeight weight, String fontFamily, {FontStyle style = FontStyle.normal}) {
    return TextStyle(
      fontSize: ptSize,
      color: color,
      fontWeight: weight,
      fontFamily: fontFamily,
      fontStyle: style
    );
  }
}
// The FontSize Class is Responsible for all the font size ranges for this app.
class FontSize {
  static const double Small = 10.0;
  static const double Medium = 15.0;
  static const double Large = 20.0;
  static const double ExtraLarge = 25.0;
}