import 'dart:convert';

List<Ability> abilityFromJson(String str) =>
    List<Ability>.from(json.decode(str).map((x) => Ability.fromJson(x)));

String abilityToJson(List<Ability> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ability {
  Ability({
    this.slot,
    this.displayName,
    this.description,
    this.displayIcon,
  });

  String? slot;
  String? displayName;
  String? description;
  String? displayIcon;

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: json["slot"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
      };
}
