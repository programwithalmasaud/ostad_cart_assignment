import 'package:ostad_cart_assignment/Utils/constants/colors.dart';
import 'package:ostad_cart_assignment/Utils/constants/sizes.dart';
import 'package:ostad_cart_assignment/Utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'package:ostad_cart_assignment/Themes/text_theme.dart';

class HomeScreenBottomLayout extends StatelessWidget {
  final Orientation orientation;
  final double screenHeight, screenWidth;
  final Function onPressed;
  final int totalPrice;

  const HomeScreenBottomLayout({
    super.key,
    required this.orientation,
    required this.screenHeight,
    required this.screenWidth,
    required this.onPressed,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (orientation == Orientation.portrait)
          ? screenHeight * 0.14
          : screenHeight * 0.22,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                children: [
                  Text("Total amount",
                      style: TextThemes.getTextStyle(
                          fontWeight: FontWeight.w800,
                          color: TColors.darkGrey,
                          fontSize: TSizes.fontSizeLg)),
                ],
              ),
              Wrap(
                children: [
                  Text("${totalPrice.toString()}\$",
                      style: TextThemes.getTextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: TSizes.fontSizeLg)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: (orientation == Orientation.portrait) ? 20 : 10,
          ),
          Center(
            child: SizedBox(
              width: (orientation == Orientation.portrait)
                  ? MediaQuery.of(context).size.width * 0.8
                  : MediaQuery.of(context).size.width * 0.4,
              height: (orientation == Orientation.portrait)
                  ? MediaQuery.of(context).size.height * 0.06
                  : MediaQuery.of(context).size.height * 0.12,
              child: ElevatedButton(
                onPressed: () => onPressed(),
                child: const Text(TTexts.checkout),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
