import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            height: 100,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
