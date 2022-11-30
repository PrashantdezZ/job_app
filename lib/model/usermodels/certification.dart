// To parse this JSON data, do
//
//     final certification = certificationFromJson(jsonString);

import 'dart:convert';

List<Certification> certificationFromJson(String str) => List<Certification>.from(json.decode(str).map((x) => Certification.fromJson(x)));

String certificationToJson(List<Certification> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Certification {
    Certification({
        required this.id,
        required this.title,
        required this.completedYear,
        required this.certificateUrl,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
        required this.user,
    });

    int id;
    String title;
    String completedYear;
    String certificateUrl;
    String description;
    DateTime createdAt;
    DateTime updatedAt;
    int user;

    factory Certification.fromJson(Map<String, dynamic> json) => Certification(
        id: json["id"],
        title: json["title"],
        completedYear: json["completed_year"],
        certificateUrl: json["certificate_url"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "completed_year": completedYear,
        "certificate_url": certificateUrl,
        "description": description,
        "created_at": "${createdAt.year.toString().padLeft(4, '0')}-${createdAt.month.toString().padLeft(2, '0')}-${createdAt.day.toString().padLeft(2, '0')}",
        "updated_at": "${updatedAt.year.toString().padLeft(4, '0')}-${updatedAt.month.toString().padLeft(2, '0')}-${updatedAt.day.toString().padLeft(2, '0')}",
        "user": user,
    };
}
