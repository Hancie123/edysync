// To parse this JSON data, do
//
//     final todatAnnouncementModel = todatAnnouncementModelFromMap(jsonString);

import 'dart:convert';

TodatAnnouncementModel todatAnnouncementModelFromMap(String str) => TodatAnnouncementModel.fromMap(json.decode(str));

String todatAnnouncementModelToMap(TodatAnnouncementModel data) => json.encode(data.toMap());

class TodatAnnouncementModel {
  List<Datum>? data;

  TodatAnnouncementModel({
    this.data,
  });

  factory TodatAnnouncementModel.fromMap(Map<String, dynamic> json) => TodatAnnouncementModel(
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
