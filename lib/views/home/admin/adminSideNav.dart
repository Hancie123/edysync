import 'package:edusync/views/home/admin/adminDashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class adminSideNav extends StatelessWidget {
  const adminSideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: Colors.white,
            height: 200,
            child: Column(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/images/college-logo.jpeg',
                    height: 200,
                    width: 200,
                  )),
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Home"),
            onTap: () {
              Get.to(() => adminDashboard());
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Exit"),
            onTap: () {
              // SystemNavigator.pop();
            },
          )
        ],
      ),
    );
  }
}
