import 'package:ostad_cart_assignment/Themes/text_theme.dart';
import 'package:ostad_cart_assignment/Utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ElevatedButtonStyle {
  static ElevatedButtonThemeData getElevatedButtonStyle() =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: TColors.buttonPrimary,
          elevation: 5,
          shadowColor: TColors.lightGrey,
          foregroundColor: TColors.white,
          textStyle: TextThemes.getTextStyle(
              fontSize: 16, fontWeight: FontWeight.w400),
        ),
      );
}
