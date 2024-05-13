import 'package:ostad_cart_assignment/Utils/constants/colors.dart';
import 'package:ostad_cart_assignment/Utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppbarStyle {
  static AppBarTheme getAppbarStyle() => const AppBarTheme(
        backgroundColor: TColors.primaryBackground,
        surfaceTintColor: TColors.primaryBackground,
        iconTheme: IconThemeData(
          size: TSizes.iconLg,
        ),
      );
}
