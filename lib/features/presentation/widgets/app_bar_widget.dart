import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/utils/app_colors.dart';
import 'package:food_delivery_app_ui/core/utils/constants.dart';
import 'package:food_delivery_app_ui/features/presentation/pages/notification_page.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleTextStyle: GoogleFonts.quicksand(fontSize: 17, color: AppColors.seconderyBlack, fontWeight: FontWeight.w600),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            Icons.location_on_rounded,
            size: 30,
            color: AppColors.iconsGreen,
          ),
          Constants.spaceWidth5,
          const Text('ABCD, New Delhi'),
          Constants.spaceWidth5,
          Icon(
            Icons.keyboard_arrow_down,
            size: 20,
            color: AppColors.iconsGreen,
          )
        ],
      ),
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(130),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: AppColors.iconsGreen,
                          size: 28,
                        ),
                        filled: true,
                        hintText: 'Search for products/stores',
                        hintStyle:const TextStyle(fontSize: 16, letterSpacing: 0.5),
                        fillColor: AppColors.lightGray,
                        enabledBorder: outlineBorder(),
                        focusedBorder: outlineBorder(),
                        errorBorder: outlineBorder(),
                        focusedErrorBorder: outlineBorder(),
                        disabledBorder: outlineBorder(),
                      ),
                    )),
             
                GestureDetector(
                  onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=> NotificationPage())),
                  child: Image.asset('assets/Group 526notification.png')),
               
                Image.asset('assets/Tag.png'),
              ],
            ),
          )),
    );
  }
}

OutlineInputBorder outlineBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  );
}