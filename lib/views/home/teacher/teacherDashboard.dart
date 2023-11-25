import 'package:edusync/views/home/teacher/sideNav.dart';
import 'package:flutter/material.dart';

class TeacherDashboard extends StatelessWidget {
  const TeacherDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: TeacherSideNav(),
      appBar: AppBar(
        title: Text("Teacher Dashboard"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [Text("Teacher Dashboard")],
      ),
    );
  }
}
