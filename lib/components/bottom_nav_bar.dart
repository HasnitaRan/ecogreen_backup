import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
      tabs: [
        // list tab
        GButton(icon: Icons.home, text: 'Edukasi'),

        // cart tab
        GButton(icon: Icons.home, text: 'Edukasi'),
      ],
    );
  }
}
