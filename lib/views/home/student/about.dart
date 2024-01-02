import 'package:edusync/views/home/student/widgets/drawer.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: StudentDrawer(),
      appBar: AppBar(
        title: const Text("EduSync"),
        backgroundColor: Colors.red.shade400,
        foregroundColor: Colors.white,
      ),
      body: Expanded(
        child: Column(children: [
          Center(
            child: Image.asset(
              'assets/images/college campus-rafiki.png',
              height: 200,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const Text(
              "EduSync is a mobile application for Android built using the framework known as Flutter that is aimed to handle school data effectively and thoroughly, thereby serving as a vital tool for administrators, teachers, and students alike. This revolutionary app simplifies administrative duties, encourages better collaboration, and improves the educational experience overall.",
              style: TextStyle(fontSize: 16),
            ),
          )
          ,
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: const Text(
              "The demand for innovative approaches in the field of education motivated the selection of this topic. Schools, colleges, and universities frequently struggle with laborious administrative tasks and poor interaction. EduSync addresses these issues by providing an integrated system that handles records for students, class scheduling, attendance, and messaging. Furthermore, by building this application with Flutter, we ensure compatibility with multiple platforms, making it easier to make available to a greater user base.",
              style: TextStyle(fontSize: 16),
            ),
          )
        ]),
      ),
    );
  }
}
