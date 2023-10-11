import 'package:edusync/views/forgotpassword.dart';
import 'package:edusync/views/home/student/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/textfield.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              width: 150,
              height: 150,
              child: Image.asset('assets/images/download.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                "EduSync",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          MyTextFormField(
            controller: emailcontroller,
            labeltext: "Enter Email",
            top: 100,
            left: 20,
            right: 20,
            texttype: TextInputType.emailAddress,
          ),
          MyTextFormField(
            labeltext: "Enter Password",
            controller: passwordcontroller,
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
                    child: Text("Forgot Password?")),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                onPressed: () async {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();

                  prefs.setString('email', emailcontroller.text.toString());
                  prefs.setString(
                      'password', passwordcontroller.text.toString());
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StudentDashboard()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
