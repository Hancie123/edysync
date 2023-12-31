import 'package:dio/dio.dart';
import 'package:edusync/views/home/admin/adminSideNav.dart';
import 'package:edusync/views/home/admin/createClass.dart';
import 'package:edusync/views/home/admin/model/classModel.dart';
import 'package:edusync/widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class ViewClassUI extends StatefulWidget {
  ViewClassUI({super.key, required this.token});

  final String? token;
  ClassModel? classModel;
  @override
  State<ViewClassUI> createState() => _ViewClassUIState();
}

class _ViewClassUIState extends State<ViewClassUI> {
  TextEditingController classController = TextEditingController();

  Future<ClassModel?> createStudentClass() async {
    Dio dio = Dio();
    try {
      var response = await dio.get(
        'https://edusync.shrawanmaharjan.com.np/api/student-class',
        options: Options(
          headers: {
            'Content-Type': 'application/json', // Set your content type as needed
            'Authorization': 'Bearer ${widget.token}', // Add your API key here
          },
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = ClassModel.fromMap(response.data);
        setState(() {});
        widget.classModel = data;
        return data;
      } else {
        return null;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    createStudentClass();
    super.initState();
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
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  Get.to(CreateClassUI(token: widget.token));
                },
                child: const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    "Create Class",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ))),
        drawer: const adminSideNav(),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: widget.classModel?.data?.length ?? 0,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Text("Classes:  ${widget.classModel?.data?[index].className ?? "llll"}",style: TextStyle(fontSize: 14,color: Colors.black),),
                        trailing: Text(widget.classModel?.data?[index].status ?? "llll",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ));
  }
}
