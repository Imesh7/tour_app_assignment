import 'dart:convert';

List<LivingStyle> livingStyleFromJson(String str) => List<LivingStyle>.from(json.decode(str).map((x) => LivingStyle.fromJson(x)));

String livingStyleToJson(List<LivingStyle> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LivingStyle {
    String name;
    String image;

    LivingStyle({
        required this.name,
        required this.image,
    });

    factory LivingStyle.fromJson(Map<String, dynamic> json) => LivingStyle(
        name: json["name"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
    };
}
