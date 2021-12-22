
class Large {
  Large({
   required this.imageUrl,
    required this.id,
  });

  String imageUrl;
  int id;

  factory Large.fromJson(Map<String, dynamic> json) =>
      Large(
        imageUrl: json["imageUrl"] == null ? '' : json["imageUrl"],
        id: json["id"] == null ? 0 : json["id"],
      );

}