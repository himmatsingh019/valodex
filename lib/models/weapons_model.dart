import 'dart:convert';

List<Weapon> weaponFromJson(String str) =>
    List<Weapon>.from(json.decode(str).map((x) => Weapon.fromJson(x)));

String weaponToJson(List<Weapon> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Weapon {
  Weapon({
    this.id,
    this.displayName,
    this.image,
    this.category,
    this.cost,
    this.fireRate,
    this.magazineSize,
    this.equipTimeSeconds,
    this.reloadTimeSeconds,
    this.wallPenetration,
    this.damageRanges,
    this.stats,
  });

  String? id;
  String? displayName;
  String? image;
  String? category;
  int? cost;
  double? fireRate;
  int? magazineSize;
  double? equipTimeSeconds;
  double? reloadTimeSeconds;
  String? wallPenetration;
  List<DamageRange>? damageRanges;
  dynamic? stats;

  factory Weapon.fromJson(Map<String, dynamic> json) => Weapon(
        id: json["id"],
        displayName: json["displayName"],
        image: json["image"],
        category: json["category"],
        cost: json["cost"],
        fireRate: json["fireRate"] == null ? null : json["fireRate"].toDouble(),
        magazineSize:
            json["magazineSize"] == null ? null : json["magazineSize"],
        equipTimeSeconds: json["equipTimeSeconds"] == null
            ? null
            : json["equipTimeSeconds"].toDouble(),
        reloadTimeSeconds: json["reloadTimeSeconds"] == null
            ? null
            : json["reloadTimeSeconds"].toDouble(),
        wallPenetration: json["wallPenetration"],
        damageRanges: json["damageRanges"] == null
            ? null
            : List<DamageRange>.from(
                json["damageRanges"].map((x) => DamageRange.fromJson(x))),
        stats: json["stats"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "displayName": displayName,
        "image": image,
        "category": category,
        "cost": cost,
        "fireRate": fireRate == null ? null : fireRate,
        "magazineSize": magazineSize == null ? null : magazineSize,
        "equipTimeSeconds": equipTimeSeconds == null ? null : equipTimeSeconds,
        "reloadTimeSeconds":
            reloadTimeSeconds == null ? null : reloadTimeSeconds,
        "wallPenetration": wallPenetration,
        "damageRanges": damageRanges == null
            ? null
            : List<dynamic>.from(damageRanges!.map((x) => x.toJson())),
        "stats": stats,
      };
}

class DamageRange {
  DamageRange({
    this.rangeStartMeters,
    this.rangeEndMeters,
    this.headDamage,
    this.bodyDamage,
    this.legDamage,
  });

  int? rangeStartMeters;
  int? rangeEndMeters;
  double? headDamage;
  double? bodyDamage;
  double? legDamage;

  factory DamageRange.fromJson(Map<String, dynamic> json) => DamageRange(
        rangeStartMeters: json["rangeStartMeters"],
        rangeEndMeters: json["rangeEndMeters"],
        headDamage: json["headDamage"].toDouble(),
        bodyDamage: json["bodyDamage"].toDouble(),
        legDamage: json["legDamage"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "rangeStartMeters": rangeStartMeters,
        "rangeEndMeters": rangeEndMeters,
        "headDamage": headDamage,
        "bodyDamage": bodyDamage,
        "legDamage": legDamage,
      };
}
