import 'package:edusync/views/forgotpassword.dart';
import 'package:edusync/views/home/student/studentDashboard.dart';
import 'package:flutter/material.dart';

import '../../widgets/textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  // TextEditingController emailcontroller = TextEditingController();
  // TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            top: 100,
            left: 20,
            right: 20,
            texttype: TextInputType.emailAddress,
          ),
          MyTextFormField(
            labeltext: "Enter Password",
            // controller: passwordcontroller,
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
                onPressed: () async {
                  // final SharedPreferences prefs =
                  //     await SharedPreferences.getInstance();

                  // prefs.setString('email', emailcontroller.text.toString());
                  // prefs.setString(
                  //     'password', passwordcontroller.text.toString());
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
