import 'package:ostad_cart_assignment/Utils/constants/sizes.dart';
import 'package:ostad_cart_assignment/Utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:ostad_cart_assignment/Themes/text_theme.dart';

class HomeScreenTitle extends StatelessWidget {
  const HomeScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        Text(
          TTexts.title,
          style: TextThemes.getTextStyle(
              fontSize: TSizes.titleSize, fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
