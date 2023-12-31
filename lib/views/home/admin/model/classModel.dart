// To parse this JSON data, do
//
//     final classModel = classModelFromMap(jsonString);

import 'dart:convert';

ClassModel classModelFromMap(String str) => ClassModel.fromMap(json.decode(str));

String classModelToMap(ClassModel data) => json.encode(data.toMap());

class ClassModel {
  List<Datum>? data;

  ClassModel({
    this.data,
  });

  factory ClassModel.fromMap(Map<String, dynamic> json) => ClassModel(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Datum {
  int? id;
  String? institutionId;
  String? className;
  String? status;
  String? createdAt;
  String? updatedAt;

  Datum({
    this.id,
    this.institutionId,
    this.className,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        institutionId: json["institution_id"],
        className: json["class_name"],
        status: json["status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "institution_id": institutionId,
        "class_name": className,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
