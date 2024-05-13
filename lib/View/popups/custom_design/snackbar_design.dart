import 'package:ostad_cart_assignment/Utils/constants/colors.dart';
import 'package:ostad_cart_assignment/Utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SnackBarDesign extends StatelessWidget {
  const SnackBarDesign({
    super.key,
    required this.title,
    required this.message,
    required this.icon,
    required this.bgColor,
  });

  final String title, message;
  final IconData icon;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: 110,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(TSizes.lg)),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 48,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: TSizes.fontSizeLg,
                            color: TColors.white,
                            fontWeight: FontWeight.w600)),
                    const Spacer(),
                    Text(
                      message,
                      style: const TextStyle(
                          fontSize: TSizes.fontSizeSm, color: TColors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 10,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            child: Icon(
              icon,
              size: 48,
              color: TColors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
