import 'large.dart';

class Images {
  Large small;
  Large large;
  Large medium;

  Images({
    required this.small,
    required this.large,
    required this.medium,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    small: json["small"] == null ? Large.fromJson(json["small"]) : Large.fromJson(json["small"]),
    large: json["large"] == null ? Large.fromJson(json["large"]) : Large.fromJson(json["large"]),
    medium: json["medium"] == null ? Large.fromJson(json["medium"]) : Large.fromJson(json["medium"]),
  );

}

