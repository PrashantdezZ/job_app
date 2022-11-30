// To parse this JSON data, do
//
//     final blogComment = blogCommentFromJson(jsonString);

import 'dart:convert';

List<BlogComment> blogCommentFromJson(String str) => List<BlogComment>.from(json.decode(str).map((x) => BlogComment.fromJson(x)));

String blogCommentToJson(List<BlogComment> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BlogComment {
    BlogComment({
        required this.blog,
        required this.commentTitle,
        required this.isPublished,
        required this.publishedAt,
    });

    int blog;
    String commentTitle;
    bool isPublished;
    DateTime publishedAt;

    factory BlogComment.fromJson(Map<String, dynamic> json) => BlogComment(
        blog: json["blog"],
        commentTitle: json["comment_title"],
        isPublished: json["is_published"],
        publishedAt: DateTime.parse(json["published_at"]),
    );

    Map<String, dynamic> toJson() => {
        "blog": blog,
        "comment_title": commentTitle,
        "is_published": isPublished,
        "published_at": publishedAt.toIso8601String(),
    };
}
