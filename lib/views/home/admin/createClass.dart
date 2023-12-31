import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class CreateClassUI extends StatelessWidget {
  CreateClassUI({super.key, required this.token});

  final String? token;
  TextEditingController classController = TextEditingController();
  Future createStudentClass() async {
    Dio dio = Dio();
    try {
      var response = await dio.post(
        'https://edusync.shrawanmaharjan.com.np/api/student-class',
        data: {"class_name": classController.text.trim()},
        options: Options(
          headers: {
            'Content-Type': 'application/json', // Set your content type as needed
            'Authorization': 'Bearer $token', // Add your API key here
          },
        ),
      );

      if (response.statusCode == 200|| response.statusCode == 201) {
        Get.defaultDialog(
          title: "Success",
          content: Text("Class created successfully!")
        );
      } else {
         Get.defaultDialog(title: "Error", content: Text("Something went wrong!"));
      }
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: 250,
              height: 250,
              child: Lottie.network('https://lottie.host/c828bbcd-8569-48c6-9f30-a6efd0900775/T2UNQ3blvA.json'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: classController,
                decoration: InputDecoration(label: Text("Enter class name"), border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  createStudentClass();
                },
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
