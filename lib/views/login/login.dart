import 'package:edusync/views/forgotpassword.dart';
import 'package:flutter/material.dart';

import '../../widgets/textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
            labeltext: "Enter Email",
            top: 100,
            left: 20,
            right: 20,
            texttype: TextInputType.emailAddress,
          ),
          MyTextFormField(
            labeltext: "Enter Password",
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
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
