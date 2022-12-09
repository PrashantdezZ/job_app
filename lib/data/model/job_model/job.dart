// To parse this JSON data, do
//
//     final jobs = jobsFromJson(jsonString);

import 'dart:convert';

List<Jobs> jobsFromJson(String str) => List<Jobs>.from(json.decode(str).map((x) => Jobs.fromJson(x)));

String jobsToJson(List<Jobs> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Jobs {
    Jobs({
        required this.id,
        required this.title,
        required this.bannerUrl,
        required this.company,
        required this.aboutCompany,
        required this.jobCategory,
        required this.minSalary,
        required this.maxSalary,
        required this.jobType,
        required this.location,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String title;
    String bannerUrl;
    String company;
    String aboutCompany;
    JobCategory jobCategory;
    double minSalary;
    double maxSalary;
    String jobType;
    String location;
    String description;
    DateTime createdAt;
    DateTime updatedAt;

    factory Jobs.fromJson(Map<String, dynamic> json) => Jobs(
        id: json["id"],
        title: json["title"],
        bannerUrl: json["banner_url"],
        company: json["company"],
        aboutCompany: json["about_company"],
        jobCategory: JobCategory.fromJson(json["job_category"]),
        minSalary: json["min_salary"],
        maxSalary: json["max_salary"],
        jobType: json["job_type"],
        location: json["location"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "banner_url": bannerUrl,
        "company": company,
        "about_company": aboutCompany,
        "job_category": jobCategory.toJson(),
        "min_salary": minSalary,
        "max_salary": maxSalary,
        "job_type": jobType,
        "location": location,
        "description": description,
        "created_at": "${createdAt.year.toString().padLeft(4, '0')}-${createdAt.month.toString().padLeft(2, '0')}-${createdAt.day.toString().padLeft(2, '0')}",
        "updated_at": "${updatedAt.year.toString().padLeft(4, '0')}-${updatedAt.month.toString().padLeft(2, '0')}-${updatedAt.day.toString().padLeft(2, '0')}",
    };
}

class JobCategory {
    JobCategory({
        required this.id,
        required this.name,
        required this.imageUrl,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String name;
    String imageUrl;
    DateTime createdAt;
    DateTime updatedAt;

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
        "created_at": "${createdAt.year.toString().padLeft(4, '0')}-${createdAt.month.toString().padLeft(2, '0')}-${createdAt.day.toString().padLeft(2, '0')}",
        "updated_at": "${updatedAt.year.toString().padLeft(4, '0')}-${updatedAt.month.toString().padLeft(2, '0')}-${updatedAt.day.toString().padLeft(2, '0')}",
    };
}
