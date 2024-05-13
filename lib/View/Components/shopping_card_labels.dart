import 'package:ostad_cart_assignment/Utils/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:ostad_cart_assignment/Themes/text_theme.dart';

class ShoppingCardLabels {
  static Text getDressLabel({required String text, required bool isLabel}) {
    if (isLabel) {
      return Text(
        text,
        style: TextThemes.getTextStyle(color: TColors.grey),
      );
    }
    return Text(text, style: TextThemes.getTextStyle(color: TColors.black));
  }
}
