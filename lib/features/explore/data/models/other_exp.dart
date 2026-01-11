
import 'dart:convert';

List<OtherExp> otherExpFromJson(String str) => List<OtherExp>.from(json.decode(str).map((x) => OtherExp.fromJson(x)));

String otherExpToJson(List<OtherExp> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OtherExp {
    String name;
    String image;

    OtherExp({
        required this.name,
        required this.image,
    });

    factory OtherExp.fromJson(Map<String, dynamic> json) => OtherExp(
        name: json["name"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
    };
}
