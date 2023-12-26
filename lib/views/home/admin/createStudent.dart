import 'package:edusync/views/home/admin/adminSideNav.dart';
import 'package:flutter/material.dart';

class CreateStudentUI extends StatelessWidget {
  const CreateStudentUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Student Account')),
      drawer: const adminSideNav(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Image.asset(
                'assets/images/Profile Interface-bro.png',
                width: 250,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(label: const Text("Enter name"), border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return "Enter email";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(label: const Text("Enter email"), border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return "Enter email";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(label: const Text("Enter phone"), border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return "Enter email";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(label: const Text("Enter address"), border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
