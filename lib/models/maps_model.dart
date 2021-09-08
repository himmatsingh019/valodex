import 'dart:convert';

List<Maps> mapsFromJson(String str) =>
    List<Maps>.from(json.decode(str).map((x) => Maps.fromJson(x)));

String mapsToJson(List<Maps> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Maps {
  Maps({
    this.displayName,
    this.description,
    this.image,
    this.id,
    this.feature,
  });

  String? displayName;
  String? description;
  String? image;

  String? id;
  String? feature;

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        displayName: json["displayName"],
        description: json["description"] == null ? null : json["description"],
        image: json["image"],
        feature: json["feature"],
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "displayName": displayName,
        "feature": feature,
        "description": description == null ? null : description,
        "image": image,
        "id": id == null ? null : id,
      };
}
