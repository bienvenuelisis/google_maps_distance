import 'point.dart';

class Bounds {
  Bounds({
    required this.northeast,
    required this.southwest,
  });

  factory Bounds.fromJson(Map<String, dynamic> json) => Bounds(
        northeast: Point.fromJson(json["northeast"]),
        southwest: Point.fromJson(json["southwest"]),
      );

  final Point northeast;
  final Point southwest;

  Bounds copyWith({
    Point? northeast,
    Point? southwest,
  }) =>
      Bounds(
        northeast: northeast ?? this.northeast,
        southwest: southwest ?? this.southwest,
      );

  Map<String, dynamic> toJson() => {
        "northeast": northeast.toJson(),
        "southwest": southwest.toJson(),
      };
}
