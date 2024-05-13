import 'package:ostad_cart_assignment/Utils/constants/colors.dart';
import 'package:ostad_cart_assignment/Utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ShoppingCardQuantityButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const ShoppingCardQuantityButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: TColors.softGrey,
            blurStyle: BlurStyle.normal,
            blurRadius: 15,
            spreadRadius: 5,
            offset: Offset(0, 10),
          )
        ],
      ),
      alignment: Alignment.center,
      child: IconButton(
        onPressed: () => onPressed(),
        icon: Icon(
          icon,
          color: TColors.darkGrey,
          size: TSizes.iconLg,
        ),
      ),
    );
  }
}
