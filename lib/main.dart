import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app_ui/features/presentation/bloc/bloc/get_notification_bloc.dart';
import 'package:food_delivery_app_ui/features/presentation/pages/bottom_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNotificationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.quicksandTextTheme(Theme.of(context).textTheme),
        ),
        home: BottomNavBar(),
      ),
    );
  }
}
