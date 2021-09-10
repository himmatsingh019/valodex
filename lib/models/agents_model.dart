import 'dart:convert';

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
    this.description1,
    this.description2,
    this.description3,
    this.description4,
    this.displayIcon1,
    this.displayIcon2,
    this.displayIcon3,
    this.displayIcon4,
    this.displayName1,
    this.displayName2,
    this.displayName3,
    this.displayName4,
  });

  String? id;
  String? displayName;
  String? description;
  String? roleName;
  String? color;
  String? description1;
  String? description2;
  String? description3;
  String? description4;
  String? displayIcon1;
  String? displayIcon2;
  String? displayIcon3;
  String? displayIcon4;
  String? displayName1;
  String? displayName2;
  String? displayName3;
  String? displayName4;

  factory Agent.fromJson(Map<String, dynamic> json) => Agent(
        id: json["id"],
        displayName: json["displayName"],
        description: json["description"],
        roleName: json["roleName"],
        color: json["color"],
        description1: json["description1"],
        description2: json["description2"],
        description3: json["description3"],
        description4: json["description4"],
        displayIcon1: json["displayIcon1"],
        displayIcon2: json["displayIcon2"],
        displayIcon3: json["displayIcon3"],
        displayIcon4: json["displayIcon4"],
        displayName1: json["displayName1"],
        displayName2: json["displayName2"],
        displayName3: json["displayName3"],
        displayName4: json["displayName4"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "displayName": displayName,
        "description": description,
        "roleName": roleName,
        "color": color,
        "description1": description1,
        "description2": description2,
        "description3": description3,
        "description4": description4,
        "displayName1": displayName1,
        "displayName2": displayName2,
        "displayName3": displayName3,
        "displayName4": displayName4,
        "displayIcon1": displayIcon1,
        "displayIcon2": displayIcon2,
        "displayIcon3": displayIcon3,
        "displayIcon4": displayIcon4,
      };
}
