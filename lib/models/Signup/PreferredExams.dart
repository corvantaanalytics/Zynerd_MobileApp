import 'dart:convert';

List<PreferredExams> examFromJson(List<dynamic> str) => List<PreferredExams>.from(
    str.map((x) => PreferredExams.fromJson(x)));

String examToJson(List<PreferredExams> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PreferredExams {
  PreferredExams({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory PreferredExams.fromJson(Map<String, dynamic> json) => PreferredExams(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
