import 'distance_value.dart';
import 'duration_value.dart';
import 'leg_polyline.dart';
import 'point.dart';

class Step {
  Step({
    required this.distance,
    required this.duration,
    required this.endLocation,
    required this.htmlInstructions,
    required this.polyline,
    required this.startLocation,
    required this.travelMode,
    this.maneuver,
  });

  factory Step.fromJson(Map<String, dynamic> json) => Step(
        distance: DistanceValue.fromJson(json["distance"]),
        duration: DurationValue.fromJson(json["duration"]),
        endLocation: Point.fromJson(json["end_location"]),
        htmlInstructions: json["html_instructions"],
        polyline: LegPolyline.fromJson(json["polyline"]),
        startLocation: Point.fromJson(json["start_location"]),
        travelMode: json["travel_mode"],
        maneuver: json["maneuver"],
      );

  final DistanceValue distance;
  final DurationValue duration;
  final Point endLocation;
  final String htmlInstructions;
  final String? maneuver;
  final LegPolyline polyline;
  final Point startLocation;
  final String travelMode;

  Step copyWith({
    DistanceValue? distance,
    DurationValue? duration,
    Point? endLocation,
    String? htmlInstructions,
    LegPolyline? polyline,
    Point? startLocation,
    String? travelMode,
    String? maneuver,
  }) =>
      Step(
        distance: distance ?? this.distance,
        duration: duration ?? this.duration,
        endLocation: endLocation ?? this.endLocation,
        htmlInstructions: htmlInstructions ?? this.htmlInstructions,
        polyline: polyline ?? this.polyline,
        startLocation: startLocation ?? this.startLocation,
        travelMode: travelMode ?? this.travelMode,
        maneuver: maneuver ?? this.maneuver,
      );

  Map<String, dynamic> toJson() => {
        "distance": distance.toJson(),
        "duration": duration.toJson(),
        "end_location": endLocation.toJson(),
        "html_instructions": htmlInstructions,
        "polyline": polyline.toJson(),
        "start_location": startLocation.toJson(),
        "travel_mode": travelMode,
        "maneuver": maneuver,
      };
}
