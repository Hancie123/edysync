import 'package:flutter/material.dart';

class MyReport extends StatelessWidget {
  const MyReport({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: Text("Student Report"),
            bottom: TabBar(labelColor: Colors.black, tabs: [
              Tab(
                text: "Text Report",
              ),
              Tab(
                text: "Exam Report",
              )
            ]),
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.red,
            )
          ]),
        ));
  }
}
