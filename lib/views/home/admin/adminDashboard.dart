import 'package:edusync/views/home/admin/adminSideNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class adminDashboard extends StatelessWidget {
  const adminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: adminSideNav(),
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        elevation: 0,
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              child: ListTile(
                leading: Icon(
                  Icons.wechat_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Welcome Admin!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              height: 80,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                // borderRadius:
                //     BorderRadius.vertical(bottom: Radius.circular(20))
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Card(
                          margin: EdgeInsets.all(30),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              children: [
                                Text(
                                  "Hello",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        Text("hello")
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
