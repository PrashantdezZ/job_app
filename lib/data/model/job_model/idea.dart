// To parse this JSON data, do
//
//     final idea = ideaFromJson(jsonString);

import 'dart:convert';

List<Idea> ideaFromJson(String str) => List<Idea>.from(json.decode(str).map((x) => Idea.fromJson(x)));

String ideaToJson(List<Idea> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Idea {
    Idea({
        this.id,
        this.name,
        this.email,
        this.contactNo,
        this.description,
        this.createdAt,
    });

    int? id;
    String? name;
    String? email;
    String? contactNo;
    String? description;
    DateTime? createdAt;

    factory Idea.fromJson(Map<String, dynamic> json) => Idea(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        contactNo: json["contact_no"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "contact_no": contactNo,
        "description": description,
        "created_at": "${createdAt!.year.toString().padLeft(4, '0')}-${createdAt!.month.toString().padLeft(2, '0')}-${createdAt!.day.toString().padLeft(2, '0')}",
    };
}
