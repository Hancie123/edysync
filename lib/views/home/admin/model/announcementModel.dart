// To parse this JSON data, do
//
//     final announcementModel = announcementModelFromMap(jsonString);

import 'dart:convert';

AnnouncementModel announcementModelFromMap(String str) => AnnouncementModel.fromMap(json.decode(str));

String announcementModelToMap(AnnouncementModel data) => json.encode(data.toMap());

class AnnouncementModel {
  List<Datum>? data;

  AnnouncementModel({
    this.data,
  });

  factory AnnouncementModel.fromMap(Map<String, dynamic> json) => AnnouncementModel(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Datum {
  int? id;
  String? title;
  String? announcement;
  String? createdAt;

  Datum({
    this.id,
    this.title,
    this.announcement,
    this.createdAt,
  });

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        announcement: json["announcement"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "announcement": announcement,
        "created_at": createdAt,
      };
}
