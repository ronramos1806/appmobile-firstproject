// To parse this JSON data, do
//
//     final announceModel = announceModelFromJson(jsonString);

import 'dart:convert';

AnnounceModel announceModelFromJson(String str) => AnnounceModel.fromJson(json.decode(str));

String announceModelToJson(AnnounceModel data) => json.encode(data.toJson());

class AnnounceModel {
    AnnounceModel({
        this.id,
        this.title,
        this.description,
    });

    int id;
    String title;
    String description;

    factory AnnounceModel.fromJson(Map<String, dynamic> json) => AnnounceModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
    };
}
