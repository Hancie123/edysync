import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class StudentNav extends StatefulWidget {
  const StudentNav({super.key});

  @override
  State<StudentNav> createState() => _StudentNavState();
}

class _StudentNavState extends State<StudentNav> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Likes',
    ),
    const Text(
      'Search',
    ),
    const Text(
      'Profile',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GNav(
      rippleColor: Colors.grey[300]!,
      hoverColor: Colors.grey[100]!,
      gap: 8,
      activeColor: Colors.black,
      iconSize: 24,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      duration: const Duration(milliseconds: 400),
      tabBackgroundColor: Colors.grey[100]!,
      color: Colors.black,
      // navigation bar padding
      tabs: const [
        GButton(
          icon: LineIcons.heart,
          text: 'Home',
        ),
        GButton(
          icon: LineIcons.heart,
          text: 'Likes',
        ),
        GButton(
          icon: LineIcons.search,
          text: 'Search',
        ),
        GButton(
          icon: LineIcons.user,
          text: 'Profile',
        )
      ],
      selectedIndex: _selectedIndex,
      onTabChange: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
