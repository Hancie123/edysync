import 'package:edusync/views/home/student/about.dart';
import 'package:edusync/views/home/student/widgets/drawer.dart';
import 'package:edusync/views/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/route_manager.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: StudentDrawer(),
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red.shade400,
      ),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 230,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(48),
                          child: Image.asset(
                            'assets/images/avatar.png',
                            fit: BoxFit.fill,
                          ))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Icon(
                          CupertinoIcons.circle_fill,
                          size: 12,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "Active",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )
                ],
              )),
          Expanded(
            child: ClipPath(
              clipper: RoundedDiagonalPathClipper(),
              child: Container(
                decoration: BoxDecoration(color: Colors.red.shade400),
                child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 120),
                        child: Icon(
                          Icons.account_box_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 120, left: 10),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => AboutPage());
                          },
                          child: Text(
                            "About",
                            style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Times New Roman"),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Icon(
                          Icons.logout,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => LoginView(),
                              ),
                              (route) => false,
                            );
                          },
                          child: Text(
                            "Logout",
                            style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Times New Roman"),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Icon(
                          Icons.exit_to_app_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10),
                        child: GestureDetector(
                          onTap: () {
                            SystemNavigator.pop();
                          },
                          child: Text(
                            "Exit",
                            style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Times New Roman"),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
