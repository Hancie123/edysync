import 'package:edusync/views/home/student/announcement.dart';
import 'package:edusync/views/home/student/dashboard.dart';
import 'package:edusync/views/home/student/report.dart';
import 'package:edusync/views/home/student/studentProfile.dart';
import 'package:edusync/views/home/student/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key});

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    MyStudentDashboard(),
    StudentAnnouncementUI(),
    MyReport(),
    StudentProfile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              selectedIndex: _currentIndex,
              onTabChange: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },

              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.announcement,
                  text: 'Announce',
                ),
                GButton(
                  icon: Icons.report,
                  text: 'Report',
                ),
                GButton(
                  icon: Icons.person_2,
                  text: 'Profile',
                ),
              ],
              // selectedIndex: _selectedIndex,
              // onTabChange: (index) {
              //   setState(() {
              //     _selectedIndex = index;
              //   });
              // },
            ),
          ),
        ),
      ),
    );
  }
}
