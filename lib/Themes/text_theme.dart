import 'package:ostad_cart_assignment/Utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TextThemes {
  static TextStyle getTextStyle({
    Color color = Colors.black,
    double fontSize = TSizes.fontSizeSm,
    String fontFamily = "Poppins",
    FontWeight fontWeight = FontWeight.w400,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
      );
}
