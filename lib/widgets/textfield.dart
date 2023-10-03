import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  MyTextFormField({
    super.key,
    required this.labeltext,
    this.left,
    this.right,
    this.top,
    this.texttype,
    this.securetext,
  });
  final String labeltext;
  final double? top;
  final double? right;
  final double? left;
  final TextInputType? texttype;
  final bool? securetext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: top ?? 0, left: left ?? 0, right: right ?? 0),
      child: TextFormField(
        keyboardType: texttype,
        obscureText: securetext??false,
        decoration: InputDecoration(
            label: Text(labeltext),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
