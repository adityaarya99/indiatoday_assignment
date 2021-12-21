class AstroModel{
  final String firstName;
  final String lastName;
  final String aboutMe;
  final String profliePicUrl;


  AstroModel({
  required this.firstName,
    required this.lastName,
    required this.aboutMe,
    required this.profliePicUrl,
});


  static List<AstroModel> toList(List<dynamic> entries) {
    return entries.map((data) => AstroModel.fromJson(data)).toList();
  }

  factory AstroModel.fromJson(Map<String, dynamic> json) {
    return AstroModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      aboutMe: json['aboutMe'],
      profliePicUrl: json['profliePicUrl'],
    );
  }

}