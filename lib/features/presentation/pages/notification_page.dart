import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/utils/app_colors.dart';
import 'package:food_delivery_app_ui/features/presentation/widgets/notification_builder.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});

  List<String> images = [
    'assets/1st.png',
    'assets/2nd.png',
    'assets/3rd.png',
    'assets/4th.png',
    'assets/5th.png',
    'assets/6th.png',
    'assets/7th.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        titleTextStyle: GoogleFonts.quicksand(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.seconderyBlack),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Image.asset('assets/backButton.png'),
        ),
        shadowColor: Colors.grey,
      ),
      body: NotificationBuilder(images: images),
    );
  }
}

