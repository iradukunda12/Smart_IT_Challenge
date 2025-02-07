import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
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
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade300,
            width: 1.w,
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(255, 29, 29, 29),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/icons/homes.png',
              width: 26.w,
              height: 26.h,
              color: const Color.fromARGB(255, 71, 69, 69),
            ),
            activeIcon: Image.asset(
              'lib/icons/homes.png',
              width: 26.w,
              height: 26.h,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/icons/analytics.png',
              width: 26.w,
              height: 26.h,
              color: const Color.fromARGB(255, 71, 69, 69),
            ),
            activeIcon: Image.asset(
              'lib/icons/analytics.png',
              width: 26.w,
              height: 26.h,
              color: Colors.black,
            ),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "lib/icons/heart.png",
              width: 26.w,
              height: 26.h,
              color: const Color.fromARGB(255, 71, 69, 69),
            ),
            activeIcon: Image.asset(
              "lib/icons/heart.png",
              width: 26,
              height: 26,
              color: Colors.black,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/icons/user.png',
              width: 26.w,
              height: 26.h,
              color: const Color.fromARGB(255, 71, 69, 69),
            ),
            activeIcon: Image.asset(
              'lib/icons/user.png',
              width: 26.w,
              height: 26.h,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
