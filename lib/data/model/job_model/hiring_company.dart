// To parse this JSON data, do
//
//     final hiringComapny = hiringComapnyFromJson(jsonString);

import 'dart:convert';

List<HiringComapny> hiringComapnyFromJson(String str) => List<HiringComapny>.from(json.decode(str).map((x) => HiringComapny.fromJson(x)));

String hiringComapnyToJson(List<HiringComapny> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HiringComapny {
    HiringComapny({
        this.id,
        this.logoUrl,
        this.name,
    });

    int? id;
    String? logoUrl;
    String? name;

    factory HiringComapny.fromJson(Map<String, dynamic> json) => HiringComapny(
        id: json["id"],
        logoUrl: json["logo_url"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "logo_url": logoUrl,
        "name": name,
    };
}
