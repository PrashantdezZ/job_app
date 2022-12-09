// To parse this JSON data, do
//
//     final experience = experienceFromJson(jsonString);

import 'dart:convert';

List<Experience> experienceFromJson(String str) => List<Experience>.from(json.decode(str).map((x) => Experience.fromJson(x)));

String experienceToJson(List<Experience> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Experience {
    Experience({
        required this.id,
        required this.title,
        required this.description,
        required this.fromDate,
        required this.toDate,
        required this.experienceLetterUrl,
        required this.createdAt,
        required this.updatedAt,
        required this.user,
        required this.company
    });

    int id;
    String title;
    String description;
    DateTime fromDate;
    DateTime toDate;
    String experienceLetterUrl;
    DateTime createdAt;
    DateTime updatedAt;
    int user;
    String company;

    factory Experience.fromJson(Map<String, dynamic> json) => Experience(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        fromDate: DateTime.parse(json["from_date"]),
        toDate: DateTime.parse(json["to_date"]),
        experienceLetterUrl: json["experience_letter_url"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: json["user"],
        company: json["company"]
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "from_date": "${fromDate.year.toString().padLeft(4, '0')}-${fromDate.month.toString().padLeft(2, '0')}-${fromDate.day.toString().padLeft(2, '0')}",
        "to_date": "${toDate.year.toString().padLeft(4, '0')}-${toDate.month.toString().padLeft(2, '0')}-${toDate.day.toString().padLeft(2, '0')}",
        "experience_letter_url": experienceLetterUrl,
        "created_at": "${createdAt.year.toString().padLeft(4, '0')}-${createdAt.month.toString().padLeft(2, '0')}-${createdAt.day.toString().padLeft(2, '0')}",
        "updated_at": "${updatedAt.year.toString().padLeft(4, '0')}-${updatedAt.month.toString().padLeft(2, '0')}-${updatedAt.day.toString().padLeft(2, '0')}",
        "user": user,
        "company" :company,
    };
}
