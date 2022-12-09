// To parse this JSON data, do
//
//     final education = educationFromJson(jsonString);

import 'dart:convert';

List<Education> educationFromJson(String str) => List<Education>.from(json.decode(str).map((x) => Education.fromJson(x)));

String educationToJson(List<Education> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Education {
    Education({
        required this.id,
        required this.title,
        required this.passedYear,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
        required this.user,
    });

    int id;
    String title;
    String passedYear;
    String description;
    DateTime createdAt;
    DateTime updatedAt;
    int user;

    factory Education.fromJson(Map<String, dynamic> json) => Education(
        id: json["id"],
        title: json["title"],
        passedYear: json["passed_year"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "passed_year": passedYear,
        "description": description,
        "created_at": "${createdAt.year.toString().padLeft(4, '0')}-${createdAt.month.toString().padLeft(2, '0')}-${createdAt.day.toString().padLeft(2, '0')}",
        "updated_at": "${updatedAt.year.toString().padLeft(4, '0')}-${updatedAt.month.toString().padLeft(2, '0')}-${updatedAt.day.toString().padLeft(2, '0')}",
        "user": user,
    };
}
