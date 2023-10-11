import 'package:edusync/widgets/mybutton.dart';
import 'package:edusync/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyForgotPassword extends StatelessWidget {
  const MyForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Password Reset",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Center(
              child: Text(
            "Enter your email to send \nthe varification code",
            textAlign: TextAlign.center,
          )),
          Center(
            child: Container(
              width: 250,
              height: 250,
              child: Lottie.network(
                  'https://lottie.host/0ee918cb-f753-4fb1-b506-95737a5252a2/tMKgL4dzAC.json'),
            ),
          ),
          MyTextFormField(
            labeltext: "Enter your email",
            left: 10,
            right: 10,
          ),
          MyButton(
            textlabel: "Send Email",
            top: 40,
            textbottom: 15,
            textleft: 15,
            textright: 15,
            texttop: 15,
            fontsize: 16,
          ),
        ],
      ),
    );
  }
}
