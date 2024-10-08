import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/utils/app_colors.dart';
import 'package:food_delivery_app_ui/core/utils/constants.dart';

class CrazeDealWidget extends StatelessWidget {
  const CrazeDealWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
        separatorBuilder: (context, index) => Constants.spaceWidth20,
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            height: 160,
            
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 32, 32, 32),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 10,
                  child: Image.asset('assets/vegPhoto.png'),
                ),
                Positioned(
                    left: 30,
                    top: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customer favourite\ntop supermarkets',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primarycolor,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Constants.spaceHight10,
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Explore',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                letterSpacing: 0.5,
                              ),
                            ),
                            Constants.spaceWidth5,
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.orange,
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
