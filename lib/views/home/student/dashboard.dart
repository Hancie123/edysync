import 'package:edusync/api/NewsApi/getNewsApi.dart';
import 'package:edusync/views/home/student/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MyStudentDashboard extends StatefulWidget {
  const MyStudentDashboard({super.key});

  @override
  State<MyStudentDashboard> createState() => _MyStudentDashboardState();
}

class _MyStudentDashboardState extends State<MyStudentDashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NewsGetApi.getnewsdata();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: StudentDrawer(),
      appBar: AppBar(
        title: Text("EduSync"),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Stack(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/user.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60,
                          left: 25,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.9,
                            child: Text(
                              "PCPS Information Desk Oiifce 2023".toUpperCase(),
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          bottom: 10,
                          child: Text(
                            "15th OCT 2023",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 15,
                          child: Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
