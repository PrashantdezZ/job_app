// To parse this JSON data, do
//
//     final language = languageFromJson(jsonString);

import 'dart:convert';

List<Language> languageFromJson(String str) => List<Language>.from(json.decode(str).map((x) => Language.fromJson(x)));

String languageToJson(List<Language> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Language {
    Language({
        required this.id,
        required this.title,
        required this.user,
    });

    int id;
    String title;
    int user;

    factory Language.fromJson(Map<String, dynamic> json) => Language(
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
