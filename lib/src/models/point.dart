class Point {
  Point({
    required this.lat,
    required this.lng,
  });

  factory Point.fromJson(Map<String, dynamic> json) => Point(
        lat: json["lat"]?.toDouble(),
        lng: json["lng"]?.toDouble(),
      );

  final double lat;
  final double lng;

  Point copyWith({
    double? lat,
    double? lng,
  }) =>
      Point(
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
      };
}
