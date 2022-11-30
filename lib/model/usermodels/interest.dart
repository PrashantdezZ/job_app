// To parse this JSON data, do
//
//     final interest = interestFromJson(jsonString);

import 'dart:convert';

List<Interest> interestFromJson(String str) => List<Interest>.from(json.decode(str).map((x) => Interest.fromJson(x)));

String interestToJson(List<Interest> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Interest {
    Interest({
        required this.id,
        required this.title,
        required this.user,
    });

    int id;
    String title;
    int user;

    factory Interest.fromJson(Map<String, dynamic> json) => Interest(
        id: json["id"],
        title: json["title"],
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "user": user,
    };
}
