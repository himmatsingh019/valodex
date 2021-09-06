import 'dart:convert';

import 'package:valodex/models/ability_model.dart';

List<Agent> agentFromJson(String str) =>
    List<Agent>.from(json.decode(str).map((x) => Agent.fromJson(x)));

String agentToJson(List<Agent> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Agent {
  Agent({
    this.id,
    this.displayName,
    this.description,
    this.roleName,
    this.color,
    this.abilities,
  });

  String? id;
  String? displayName;
  String? description;
  String? roleName;
  String? color;
  List<Ability>? abilities;

  factory Agent.fromJson(Map<String, dynamic> json) => Agent(
        id: json["id"],
        displayName: json["displayName"],
        description: json["description"],
        roleName: json["roleName"],
        color: json["color"],
        abilities: abilityFromJson(jsonEncode(json["abilities"])),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "displayName": displayName,
        "description": description,
        "roleName": roleName,
        "color": color,
        "abilities": List<dynamic>.from(abilities!.map((x) => x.toJson())),
      };
}
