// To parse this JSON data, do
//
//     final ads = adsFromJson(jsonString);

import 'dart:convert';

List<Ads> adsFromJson(String str) => List<Ads>.from(json.decode(str).map((x) => Ads.fromJson(x)));

String adsToJson(List<Ads> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ads {
    Ads({
        required this.id,
        required this.banner1Url,
        required this.banner2Url,
        required this.banner3Url,
    });

     int id;
    String banner1Url;
    String banner2Url;
    String banner3Url;

    factory Ads.fromJson(Map<String, dynamic> json) => Ads(
        id: json["id"],
        banner1Url: json["banner1_url"],
        banner2Url: json["banner2_url"],
        banner3Url: json["banner3_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "banner1_url": banner1Url,
        "banner2_url": banner2Url,
        "banner3_url": banner3Url,
    };
}
