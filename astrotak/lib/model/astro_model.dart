import 'package:astrotak/model/language_model.dart';
import 'package:astrotak/model/skill.dart';

import 'image_model.dart';

class AstroModel{
  final String firstName;
  final String lastName;
  final String aboutMe;
  final String profliePicUrl;
  final List<Language> languages;
  final List<Skill> skill;
  final double additionalPerMinuteCharges;
  final double experience;
  final Images image;

  AstroModel({
  required this.firstName,
    required this.lastName,
    required this.aboutMe,
    required this.profliePicUrl,
    required this.languages,
    required this.skill,
    required this.additionalPerMinuteCharges,
    required this.experience,
    required this.image,
});


  static List<AstroModel> toList(List<dynamic> entries) {
    return entries.map((data) => AstroModel.fromJson(data)).toList();
  }


  factory AstroModel.fromJson(Map<String, dynamic> json) {
    return AstroModel(
      firstName: (json['firstName'] == null) ? '' : json['firstName'],
      lastName: (json['lastName'] == null) ? '' : json['lastName'],
      aboutMe: (json['aboutMe'] == null) ? '' : json['aboutMe'],
      profliePicUrl: (json['profliePicUrl'] == null) ? '' : json['profliePicUrl'],
      languages: json["languages"] == null ? '' as List<Language> : List<Language>.from(json["languages"].map((x) => Language.fromJson(x))),
      skill: json["skills"] == null ? '' as List<Skill> : List<Skill>.from(json["skills"].map((x) => Skill.fromJson(x))),
      additionalPerMinuteCharges: (json['additionalPerMinuteCharges'] == null) ? 0.0 : json['additionalPerMinuteCharges'],
      experience: (json['experience'] == null) ? 0.0 : json['experience'],
      image: (Images.fromJson(json["images"]) == null) ? ''as Images : Images.fromJson(json["images"]),
     );
  }

}