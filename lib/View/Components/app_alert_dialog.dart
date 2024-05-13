import 'package:ostad_cart_assignment/Utils/constants/colors.dart';
import 'package:ostad_cart_assignment/Utils/constants/sizes.dart';
import 'package:ostad_cart_assignment/Utils/constants/text_strings.dart';
import 'package:ostad_cart_assignment/generated/assets.dart';
import 'package:flutter/material.dart';

import 'package:ostad_cart_assignment/Themes/text_theme.dart';

class AppAlertDialog extends StatelessWidget {
  final String title, content;
  final Orientation orientation;

  const AppAlertDialog(
      {super.key,
      required this.title,
      required this.content,
      required this.orientation});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: Colors.white,
      title: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextThemes.getTextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: Assets.fontsCoolveticaRegular,
              fontSize: TSizes.fontSizeXl,
              color: TColors.success),
        ),
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: TextThemes.getTextStyle(
            fontSize: TSizes.fontSizeMd, fontWeight: FontWeight.w400),
      ),
      contentPadding: const EdgeInsets.all(TSizes.defaultSpace),
      actionsAlignment: MainAxisAlignment.center,
      elevation: TSizes.cardElevation,
      shadowColor: TColors.lightGrey,
      actions: [
        SizedBox(
          width: (orientation == Orientation.portrait)
              ? MediaQuery.of(context).size.width * 0.8
              : MediaQuery.of(context).size.width * 0.4,
          height: (orientation == Orientation.portrait)
              ? MediaQuery.of(context).size.height * 0.06
              : MediaQuery.of(context).size.height * 0.12,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(TTexts.ok),
          ),
        )
      ],
    );
  }
}
