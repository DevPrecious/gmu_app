import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? name;
  String? username;
  String? email;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  UserModel({
    this.name,
    this.username,
    this.email,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        username: json["username"],
        email: json["email"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "username": username,
        "email": email,
        "updated_at": updatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "id": id,
      };
}
