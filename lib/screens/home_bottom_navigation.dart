import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens.dart';

class HomeBottomNavigation extends StatefulWidget {
  const HomeBottomNavigation({super.key});

  @override
  State<HomeBottomNavigation> createState() => _HomeBottomNavigationState();
}

class _HomeBottomNavigationState extends State<HomeBottomNavigation> {
  int index = 0;
  final screens = [
    HomePage(),
    const FavoritePage(),
    const NotificationPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.transparent,
        onDestinationSelected: (value) {
          index = value;
          setState(() {});
        },
        elevation: 0,
        backgroundColor: Colors.transparent,
        height: 50.h,
        selectedIndex: index,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Color.fromRGBO(255, 160, 0, 1),
              size: 30,
            ),
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: "",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.favorite,
              color: Color.fromRGBO(255, 160, 0, 1),
              size: 30,
            ),
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
            label: "",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.notifications,
              color: Color.fromRGBO(255, 160, 0, 1),
              size: 30,
            ),
            icon: Icon(
              Icons.notifications_outlined,
              size: 30,
            ),
            label: "",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.account_circle,
              color: Color.fromRGBO(255, 160, 0, 1),
              size: 30,
            ),
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30,
            ),
            label: "",
          ),
        ],
      ),
      body: screens[index],
    );
  }
}
