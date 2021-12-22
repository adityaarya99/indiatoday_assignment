import 'package:astrotak/model/skill.dart';

class Language {
  Language({
    required this.id,
   required this.name,
  });

  int id;
  String name;

  factory Language.fromJson(Map<String, dynamic> json) => Language(
    id: (json["id"] == null) ? '' : json["id"],
    name: (json["name"] == null) ? '' : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
