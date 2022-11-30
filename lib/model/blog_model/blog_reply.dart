// To parse this JSON data, do
//
//     final blogReply = blogReplyFromJson(jsonString);

import 'dart:convert';

List<BlogReply> blogReplyFromJson(String str) => List<BlogReply>.from(json.decode(str).map((x) => BlogReply.fromJson(x)));

String blogReplyToJson(List<BlogReply> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BlogReply {
    BlogReply({
        required this.id,
        required this.replyTitle,
        required this.isPublished,
        required this.publishedAt,
        required this.blogComment,
    });

    int id;
    String replyTitle;
    bool isPublished;
    DateTime publishedAt;
    int blogComment;

    factory BlogReply.fromJson(Map<String, dynamic> json) => BlogReply(
        id: json["id"],
        replyTitle: json["reply_title"],
        isPublished: json["is_published"],
        publishedAt: DateTime.parse(json["published_at"]),
        blogComment: json["blog_comment"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "reply_title": replyTitle,
        "is_published": isPublished,
        "published_at": publishedAt.toIso8601String(),
        "blog_comment": blogComment,
    };
}
