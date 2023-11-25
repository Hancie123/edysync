import 'dart:convert';

import 'package:edusync/views/forgotpassword.dart';
import 'package:edusync/views/home/admin/adminDashboard.dart';
import 'package:edusync/views/home/student/studentNav.dart';
import 'package:edusync/views/home/teacher/teacherDashboard.dart';
import 'package:edusync/widgets/gNav.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../widgets/textfield.dart';

class LoginView extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void login(String email, password) async {
      try {
        Response response = await post(
            Uri.parse('https://edusync.shrawanmaharjan.com.np/api/login'),
            body: {'email': email, 'password': password});

        if (response.statusCode == 200) {
          Map<String, dynamic> jsonResponse = json.decode(response.body);
          String userName = jsonResponse['data']['data']['name'];
          String userStatus = jsonResponse['data']['data']['status'];

          // Show welcome message
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Welcome!'),
                content: Text('Hello, $userName! Welcome to EduSync.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the welcome dialog

                      // Conditionally navigate based on user status
                      if (userStatus == 'admin') {
                        // Navigate to TeacherDashboard
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => adminDashboard(),
                          ),
                        );
                      } else if (userStatus == 'student') {
                        // Navigate to StudentDashboard
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StudentDashboard(),
                          ),
                        );
                      } else {
                        // Handle other statuses as needed
                        print('Unknown user status: $userStatus');
                      }
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Login Failed'),
                content: Text('Incorrect email or password. Please try again.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      } catch (e) {
        print(e.toString());
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: SizedBox(
              width: 150,
              height: 150,
              child: Image.asset('assets/images/download.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                "EduSync",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          MyTextFormField(
            // controller: emailcontroller,
            labeltext: "Enter Email",
            controller: emailController,
            top: 100,
            left: 20,
            right: 20,
            texttype: TextInputType.emailAddress,
          ),
          MyTextFormField(
            labeltext: "Enter Password",
            controller: passwordController,
            top: 40,
            left: 20,
            right: 20,
            securetext: true,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, top: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyForgotPassword()));
                    },
                    child: const Text("Forgot Password?")),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    onTap: () {
                      login(emailController.text.toString(),
                          passwordController.text.toString());
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const StudentDashboard()));
                      // Navigator.pushAndRemoveUntil(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const StudentDashboard()),
                      //     (route) => false);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )),
          ),
          const SizedBox(
            height: 60,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50))),
              child: const Center(
                  child: Text(
                "Developed By: Prajwol,\nShrawan & Samyak",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
