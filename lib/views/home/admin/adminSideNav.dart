import 'package:flutter/material.dart';

class adminSideNav extends StatelessWidget {
  const adminSideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
            accountName: Text("admin"), accountEmail: Text("admin@gmail.com")),
      ],
    ));
  }
}
