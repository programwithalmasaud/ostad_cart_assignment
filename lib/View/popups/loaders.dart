import 'package:ostad_cart_assignment/Utils/constants/colors.dart';
import 'package:ostad_cart_assignment/Utils/constants/text_strings.dart';
import 'package:ostad_cart_assignment/View/popups/custom_design/snackbar_design.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoaders {
  static void successSnackBar({
    required String message,
  }) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: SnackBarDesign(
          title: TTexts.success,
          message: message,
          icon: Iconsax.tick_circle4,
          bgColor: TColors.success,
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
