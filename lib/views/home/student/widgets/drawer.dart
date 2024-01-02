import 'package:edusync/views/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

class StudentDrawer extends StatelessWidget {
  const StudentDrawer({super.key});

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
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
               Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => LoginView(),
                ),
                (route) => false,
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
            onTap: () {
              SystemNavigator.pop();
            },
          )
        ],
      ),
    );
  }
}
