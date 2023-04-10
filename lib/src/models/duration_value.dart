class DurationValue {
  DurationValue({
    required this.text,
    required this.seconds,
  });

  factory DurationValue.fromJson(Map<String, dynamic> json) => DurationValue(
        text: json["text"],
        seconds: json["value"],
      );

  final int seconds;
  final String text;

  Duration get value => Duration(seconds: seconds);

  DurationValue copyWith({
    String? text,
    int? seconds,
  }) =>
      DurationValue(
        text: text ?? this.text,
        seconds: seconds ?? this.seconds,
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "value": seconds,
      };
}
