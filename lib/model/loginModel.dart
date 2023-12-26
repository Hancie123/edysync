// To parse this JSON data, do
//
//     final loginModel = loginModelFromMap(jsonString);

import 'dart:convert';

LoginModel loginModelFromMap(String str) => LoginModel.fromMap(json.decode(str));

String loginModelToMap(LoginModel data) => json.encode(data.toMap());

class LoginModel {
  LoginModelData? data;
  String? message;

  LoginModel({
    this.data,
    this.message,
  });

  factory LoginModel.fromMap(Map<String, dynamic> json) => LoginModel(
        data: json["data"] == null ? null : LoginModelData.fromMap(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
        "message": message,
      };
}

class LoginModelData {
  DataData? data;
  String? token;

  LoginModelData({
    this.data,
    this.token,
  });

  factory LoginModelData.fromMap(Map<String, dynamic> json) => LoginModelData(
        data: json["data"] == null ? null : DataData.fromMap(json["data"]),
        token: json["token"],
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
        "token": token,
      };
}

class DataData {
  int? id;
  String? institutionId;
  String? name;
  String? email;
  String? address;
  String? phone;
  String? emailVerifiedAt;
  String? role;
  String? createdAt;
  String? updatedAt;

  DataData({
    this.id,
    this.institutionId,
    this.name,
    this.email,
    this.address,
    this.phone,
    this.emailVerifiedAt,
    this.role,
    this.createdAt,
    this.updatedAt,
  });

  factory DataData.fromMap(Map<String, dynamic> json) => DataData(
        id: json["id"],
        institutionId: json["institution_id"],
        name: json["name"],
        email: json["email"],
        address: json["address"],
        phone: json["phone"],
        emailVerifiedAt: json["email_verified_at"],
        role: json["role"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "institution_id": institutionId,
        "name": name,
        "email": email,
        "address": address,
        "phone": phone,
        "email_verified_at": emailVerifiedAt,
        "role": role,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
