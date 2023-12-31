import 'package:dio/dio.dart';
import 'package:edusync/views/home/admin/adminSideNav.dart';
import 'package:edusync/views/home/admin/createClass.dart';
import 'package:edusync/widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class ViewClassUI extends StatelessWidget {
   ViewClassUI({super.key,required this.token});
  
  
 final String? token;
  TextEditingController classController = TextEditingController();
  Future createStudentClass() async {
    Dio dio = Dio();
    try {
      var response = await dio.get(
        'https://edusync.shrawanmaharjan.com.np/api/student-class',
        data: {"class_name": classController.text.trim()},
        options: Options(
          headers: {
            'Content-Type': 'application/json', // Set your content type as needed
            'Authorization': 'Bearer $token', // Add your API key here
          },
        ),
      );

     
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Student Classes'),
          backgroundColor: Colors.red.shade400,
        ),
        floatingActionButton: Container(
            child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  Get.to(CreateClassUI(token: token));
                },
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "Create Class",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ))),
        drawer: const adminSideNav(),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all()),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("Hancie"),
                    ),
                  ),
                );
              }),
        ));
  }

}
