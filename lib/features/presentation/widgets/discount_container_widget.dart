import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/utils/app_colors.dart';
import 'package:food_delivery_app_ui/core/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountContainerWidget extends StatelessWidget {
  const DiscountContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(color: AppColors.appGreen, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DISCOUNT\n25% ALL\nFRUITS',
                  style: GoogleFonts.kanit(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.primarycolor),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), 
                    ),
                    minimumSize: const Size(100, 10), 
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: Text('CHECK NOW',style: TextStyle(color: AppColors.primarycolor,fontSize: 14,fontWeight: FontWeight.w500,letterSpacing: 0.5),),
                ),
                Constants.spaceHight15
              ],
            ),
          ),
        ),
        Positioned(
          left: 160,
          bottom: 0,
          child: Image.asset('assets/Figma_Resources_2-removebg-preview 1.png'))
      ],
    );
  }
}

