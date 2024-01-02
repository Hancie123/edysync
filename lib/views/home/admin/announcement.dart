import 'package:dio/dio.dart';
import 'package:edusync/views/home/admin/adminSideNav.dart';
import 'package:edusync/views/home/admin/createClass.dart';
import 'package:edusync/views/home/admin/model/announcementModel.dart';
import 'package:edusync/views/home/admin/model/classModel.dart';
import 'package:edusync/widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class AnnouncementUI extends StatefulWidget {
  AnnouncementUI({super.key, required this.token});

  final String? token;
  AnnouncementModel? announcementModel;
  @override
  State<AnnouncementUI> createState() => _AnnouncementUIState();
}

class _AnnouncementUIState extends State<AnnouncementUI> {
  TextEditingController classController = TextEditingController();

  Future<AnnouncementModel?> createStudentClass() async {
    Dio dio = Dio();
    try {
      var response = await dio.get(
        'https://edusync.shrawanmaharjan.com.np/api/announcements',
        options: Options(
          headers: {
            'Content-Type': 'application/json', // Set your content type as needed
            'Authorization': 'Bearer ${widget.token}', // Add your API key here
          },
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = AnnouncementModel.fromMap(response.data);
        setState(() {});
        widget.announcementModel = data;
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade400,
          foregroundColor: Colors.white,
          title: const Text("Announcements"),
          bottom: const TabBar(labelColor: Colors.white, tabs: [
            Tab(
              text: "Today Announcement",
            ),
            Tab(
              text: "Announcement History",
            )
          ]),
        ),
        drawer: const adminSideNav(),
        body: TabBarView(children: [
          ListView.builder(
              itemCount: widget.announcementModel?.data?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.red.shade400, borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      // trailing: Text(
                      //   "Published: ${widget.announcementModel?.data?[index].createdAt ?? "llll"}",
                      //   style: TextStyle(fontSize: 14, color: Colors.white),
                      // ),
                      title: Text(
                        "Title: ${widget.announcementModel?.data?[index].title ?? "llll"}",style: TextStyle(fontSize: 14,color: Colors.white),
                       
                      ),
                      subtitle: Text(
                        "Message: ${widget.announcementModel?.data?[index].announcement ?? "llll"}",style: TextStyle(fontSize: 14,color: Colors.white),
                       
                      ),
                      splashColor: Colors.black,
                      onTap: () {},
                    ),
                  ),
                );
              }),
          Container(
            
          )
        ]),
      ),
    );
  }
}
