import 'package:edusync/views/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EduSync',
      theme: ThemeData(primaryColor: Colors.blue),
      home: LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
