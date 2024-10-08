import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/features/presentation/pages/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        enableFeedback: false,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(color: Colors.grey),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/navHome.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/navCart.png'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/navMyorder.png'),
            label: 'My Order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/navProfile.png'),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
       showSelectedLabels: true,
       selectedItemColor: Colors.grey,
       unselectedLabelStyle: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
        onTap: _onItemTapped,
      ),
    );
  }
}
