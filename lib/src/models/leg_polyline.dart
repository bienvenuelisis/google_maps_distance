class LegPolyline {
  LegPolyline({
    required this.points,
  });

  factory LegPolyline.fromJson(Map<String, dynamic> json) => LegPolyline(
        points: json["points"],
      );

  final String points;

  LegPolyline copyWith({
    String? points,
  }) =>
      LegPolyline(
        points: points ?? this.points,
      );

  Map<String, dynamic> toJson() => {
        "points": points,
      };
}
