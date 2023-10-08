import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {super.key,
      this.textlabel,
      this.top,
      this.left,
      this.right,
      this.bottom,
      this.texttop,
      this.textbottom,
      this.textleft,
      this.textright,
      this.fontsize});
  final String? textlabel;
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;

  final double? texttop;
  final double? textleft;
  final double? textright;
  final double? textbottom;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: top ?? 0,
          left: left ?? 0,
          right: right ?? 0,
          bottom: bottom ?? 0),
      child: ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.only(
                top: texttop ?? 0,
                left: textleft ?? 0,
                right: textright ?? 0,
                bottom: textbottom ?? 0),
            child: Text(
              textlabel ?? "",
              style: TextStyle(fontSize: fontsize ?? 0),
            ),
          )),
    );
  }
}
