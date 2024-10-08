import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/utils/app_colors.dart';

class ViewAllStoresButton extends StatelessWidget {
  const ViewAllStoresButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
           onPressed: () {},
           style: ElevatedButton.styleFrom(
             shadowColor: Colors.transparent,
             backgroundColor:AppColors.iconsGreen,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(8), 
             ),
             minimumSize: const Size(100, 10), 
             padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 14),
             textStyle: const TextStyle(fontSize: 18),
           ),
           child: Text('View all stores',style: TextStyle(color: AppColors.primarycolor,fontSize: 16,letterSpacing: 0.5),),
         ),
    );
  }
}

