// To parse this JSON data, do
//
//     final blogCategory = blogCategoryFromJson(jsonString);

import 'dart:convert';

List<BlogCategory> blogCategoryFromJson(String str) => List<BlogCategory>.from(json.decode(str).map((x) => BlogCategory.fromJson(x)));

String blogCategoryToJson(List<BlogCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BlogCategory {
    BlogCategory({
        required this.id,
        required this.thumbnailUrl,
        required this.title,
        required this.urlSlug,
        required this.thumbnail,
        required this.description,
        required this.createdAt,
        required this.isActive,
    });

    int id;
    String thumbnailUrl;
    String title;
    String urlSlug;
    String thumbnail;
    String description;
    DateTime createdAt;
    bool isActive;

    factory BlogCategory.fromJson(Map<String, dynamic> json) => BlogCategory(
        id: json["id"],
        thumbnailUrl: json["thumbnail_url"],
        title: json["title"],
        urlSlug: json["url_slug"],
        thumbnail: json["thumbnail"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        isActive: json["is_active"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "thumbnail_url": thumbnailUrl,
        "title": title,
        "url_slug": urlSlug,
        "thumbnail": thumbnail,
        "description": description,
        "created_at": createdAt.toIso8601String(),
        "is_active": isActive,
    };
}
