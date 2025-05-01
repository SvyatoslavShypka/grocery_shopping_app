import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: NavigationBar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            height: 60,
            selectedIndex: index,
            indicatorColor: Colors.transparent,
            destinations: [
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: NavigationDestination(
              selectedIcon: Icon(Icons.home, color: Colors.white),
              icon: Icon(Icons.home_outlined, color: Colors.white),
              label: 'Home',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: NavigationDestination(
              selectedIcon: Icon(Icons.shopping_bag, color: Colors.white),
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
              label: 'Browse',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: NavigationDestination(
              selectedIcon: Icon(Icons.qr_code, color: Colors.white),
              icon: Icon(Icons.qr_code_2_outlined, color: Colors.white),
              label: 'Scan',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: NavigationDestination(
              selectedIcon: Icon(Icons.shopping_bag, color: Colors.white),
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
              label: 'Orders',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: NavigationDestination(
              selectedIcon: Icon(Icons.qr_code, color: Colors.white),
              icon: Icon(Icons.qr_code_2_outlined, color: Colors.white),
              label: 'Profile',
            ),
          ),
        ]));
  }
}
