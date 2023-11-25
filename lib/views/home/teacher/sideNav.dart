import 'package:edusync/views/login/login.dart';
import 'package:flutter/material.dart';

class TeacherSideNav extends StatelessWidget {
  const TeacherSideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Hancie Phago"),
            accountEmail: Text("hanciephago@gmail.com"),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset('assets/images/user.jpg'),
            )),
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginView()),
                (route) => false),
          )
        ],
      ),
    );
  }
}
