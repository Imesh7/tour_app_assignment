import 'dart:convert';

List<Trips> tripsFromJson(String str) => List<Trips>.from(json.decode(str).map((x) => Trips.fromJson(x)));

String tripsToJson(List<Trips> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Trips {
    String name;
    String image;
    int rentedPropsCount;

    Trips({
        required this.name,
        required this.image,
        required this.rentedPropsCount,
    });

    factory Trips.fromJson(Map<String, dynamic> json) => Trips(
        name: json["name"],
        image: json["image"],
        rentedPropsCount: json["rented_props_count"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "rented_props_count": rentedPropsCount,
    };
}