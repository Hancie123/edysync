import 'package:edusync/views/home/student/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyReport extends StatelessWidget {
  const MyReport({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: StudentDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: Text("Student Report"),
            bottom: TabBar(labelColor: Colors.black, tabs: [
              Tab(
                text: "Test Report",
              ),
              Tab(
                text: "Exam Report",
              )
            ]),
          ),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.folder_open_rounded),
                          color: Colors.white,
                        ),
                        title: Text(
                          "First Sem " + index.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        splashColor: Colors.black,
                        onTap: () {},
                      ),
                    ),
                  );
                }),
            Container(
              color: Colors.red,
            )
          ]),
        ));
  }
}
