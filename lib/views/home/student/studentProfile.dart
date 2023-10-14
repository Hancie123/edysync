import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(50))),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(48),
                          child: Image.asset(
                            'assets/images/IMG_3022.jpg',
                            fit: BoxFit.fill,
                          ))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6, top: 5),
                        child: Icon(
                          CupertinoIcons.circle_fill,
                          size: 12,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "Active",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
