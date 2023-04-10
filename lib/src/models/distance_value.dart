class DistanceValue {
  DistanceValue({
    required this.text,
    required this.meters,
  });

  factory DistanceValue.fromJson(Map<String, dynamic> json) => DistanceValue(
        text: json["text"],
        meters: json["value"],
      );

  final String text;
  final int meters;

  DistanceValue copyWith({
    String? text,
    int? meters,
  }) =>
      DistanceValue(
        text: text ?? this.text,
        meters: meters ?? this.meters,
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "value": meters,
      };
}
