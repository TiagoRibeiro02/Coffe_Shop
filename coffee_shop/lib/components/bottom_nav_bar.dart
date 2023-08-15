import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(tabs: [
      GButton(
        icon: Icons.home,
        text: 'shop',
      ),
      GButton(
        icon: Icons.shopping_bag_outlined,
        text: 'Cart',
      ),
    ]);
  }
}
