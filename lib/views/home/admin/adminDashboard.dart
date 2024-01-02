import 'package:edusync/model/loginModel.dart';
import 'package:edusync/views/home/admin/adminSideNav.dart';
import 'package:edusync/views/home/admin/announcement.dart';
import 'package:edusync/views/home/admin/viewClass.dart';
import 'package:edusync/views/home/admin/createStudent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

class adminDashboard extends StatelessWidget {
   adminDashboard({super.key, this.loginModel});
  final LoginModel? loginModel;

  @override
  Widget build(BuildContext context) {
    var userData = loginModel?.data?.data;

    return Scaffold(
      drawer: const adminSideNav(),
      appBar: AppBar(
        title: const Text('Admin Dashboard',style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.red.shade400,
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 80,
              decoration:  BoxDecoration(
                color: Colors.red.shade400,
                // borderRadius:
                //     BorderRadius.vertical(bottom: Radius.circular(20))
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  'Welcome ${userData?.name ?? ''}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateStudentUI())),
                              child: const Card(
                                margin: EdgeInsets.all(10),
                                child: Padding(
                                  padding: EdgeInsets.all(30.0),
                                  child: Column(
                                    children: [
                                      Icon(Icons.people),
                                      Text(
                                        "Students",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              margin: const EdgeInsets.all(10),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  children: [
                                    const Icon(Icons.person_3),
                                    const Text(
                                      "Teachers",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Card(
                              margin: EdgeInsets.all(10),
                              child: Padding(
                                padding: EdgeInsets.all(30.0),
                                child: Column(
                                  children: [
                                    Icon(Icons.text_snippet_rounded),
                                    Text(
                                      "Exams",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                           Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => AnnouncementUI(
                                      token: loginModel?.data?.token,
                                    ));
                              },
                              child: Card(
                                margin: EdgeInsets.all(10),
                                child: Padding(
                                  padding: EdgeInsets.all(30.0),
                                  child: Column(
                                    children: [
                                      Icon(Icons.event),
                                      Text(
                                        "Events",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {

                                
                                Get.to(() => ViewClassUI(token: loginModel?.data?.token,));
                              },
                              child: const Card(
                                margin: EdgeInsets.all(10),
                                child: Padding(
                                  padding: EdgeInsets.all(30.0),
                                  child: Column(
                                    children: [
                                      Icon(Icons.class_),
                                      Text(
                                        "Classes",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                                onTap: () {},
                                child: const Card(
                                  margin: EdgeInsets.all(10),
                                  child: Padding(
                                    padding: EdgeInsets.all(30.0),
                                    child: Column(
                                      children: [
                                        Icon(Icons.payments_outlined),
                                        Text(
                                          "Bills",
                                          style: TextStyle(color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
