// To parse this JSON data, do
//
//     final skill = skillFromJson(jsonString);

import 'dart:convert';

List<Skill> skillFromJson(String str) => List<Skill>.from(json.decode(str).map((x) => Skill.fromJson(x)));

String skillToJson(List<Skill> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Skill {
    Skill({
        required this.id,
        required this.skill,
        required this.createdAt,
        required this.updatedAt,
        required this.user,
    });

    int id;
    String skill;
    DateTime createdAt;
    DateTime updatedAt;
    int user;

    factory Skill.fromJson(Map<String, dynamic> json) => Skill(
        id: json["id"],
        skill: json["skill"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "skill": skill,
        "created_at": "${createdAt.year.toString().padLeft(4, '0')}-${createdAt.month.toString().padLeft(2, '0')}-${createdAt.day.toString().padLeft(2, '0')}",
        "updated_at": "${updatedAt.year.toString().padLeft(4, '0')}-${updatedAt.month.toString().padLeft(2, '0')}-${updatedAt.day.toString().padLeft(2, '0')}",
        "user": user,
    };
}
