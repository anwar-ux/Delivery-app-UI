import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/utils/app_colors.dart';
import 'package:food_delivery_app_ui/core/utils/constants.dart';

class ReferWidget extends StatelessWidget {
  const ReferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.iconsGreen, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Refer & Earn', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.primarycolor)),
                Row(
                  children: [
                    Text('Invite your friends & earn 15% off',
                        style: TextStyle(
                         
                          fontWeight: FontWeight.bold,
                          color: AppColors.primarycolor,
                        )),
                    Constants.spaceWidth10,
                    Image.asset('assets/rightarrow.png')
                  ],
                )
              ],
            ),
            Image.asset('assets/giftbox.png')
          ],
        ),
      ),
    );
  }
}
