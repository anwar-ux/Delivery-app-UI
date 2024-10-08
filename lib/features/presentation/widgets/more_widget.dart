import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/utils/app_colors.dart';

class MoreWidget extends StatelessWidget {
  const MoreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'More',
          style: TextStyle(color: AppColors.iconsGreen, fontWeight: FontWeight.w600),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          size: 20,
          color: AppColors.iconsGreen,
        )
      ],
    );
  }
}
