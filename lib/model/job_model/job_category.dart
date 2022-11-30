// To parse this JSON data, do
//
//     final jobCategory = jobCategoryFromJson(jsonString);

import 'dart:convert';

List<JobCategory> jobCategoryFromJson(String str) => List<JobCategory>.from(json.decode(str).map((x) => JobCategory.fromJson(x)));

String jobCategoryToJson(List<JobCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class JobCategory {
    JobCategory({
        this.id,
        this.name,
        this.imageUrl,
        this.createdAt,
        this.updatedAt,
    });

    int? id;
    String? name;
    String? imageUrl;
    DateTime? createdAt;
    DateTime? updatedAt;

    factory JobCategory.fromJson(Map<String, dynamic> json) => JobCategory(
        id: json["id"],
        name: json["name"],
        imageUrl: json["image_url"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image_url": imageUrl,
        "created_at": "${createdAt!.year.toString().padLeft(4, '0')}-${createdAt!.month.toString().padLeft(2, '0')}-${createdAt!.day.toString().padLeft(2, '0')}",
        "updated_at": "${updatedAt!.year.toString().padLeft(4, '0')}-${updatedAt!.month.toString().padLeft(2, '0')}-${updatedAt!.day.toString().padLeft(2, '0')}",
    };
}
