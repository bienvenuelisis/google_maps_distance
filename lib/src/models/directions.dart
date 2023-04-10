// To parse this JSON data, do
//
//     final directions = directionsFromJson(jsonString);

import 'dart:convert';

import 'geocoded_way_point.dart';
import 'route.dart';

Directions directionsFromJson(String str) =>
    Directions.fromJson(json.decode(str));

String directionsToJson(Directions data) => json.encode(data.toJson());

class Directions {
  Directions({
    required this.geocodedWaypoints,
    required this.routes,
    required this.status,
  });

  factory Directions.fromJson(Map<String, dynamic> json) => Directions(
        geocodedWaypoints: List<GeocodedWaypoint>.from(
            json["geocoded_waypoints"]
                .map((x) => GeocodedWaypoint.fromJson(x))),
        routes: List<Route>.from(json["routes"].map((x) => Route.fromJson(x))),
        status: json["status"],
      );

  final List<GeocodedWaypoint> geocodedWaypoints;
  final List<Route> routes;
  final String status;

  Route get shortestRoute => (routes
        ..sort((r1, r2) => r1.shortestLeg.distanceInMeters
            .compareTo(r2.shortestLeg.distanceInMeters)))
      .first;

  bool get ok => status.toUpperCase() == "OK";

  Directions copyWith({
    List<GeocodedWaypoint>? geocodedWaypoints,
    List<Route>? routes,
    String? status,
  }) =>
      Directions(
        geocodedWaypoints: geocodedWaypoints ?? this.geocodedWaypoints,
        routes: routes ?? this.routes,
        status: status ?? this.status,
      );

  Map<String, dynamic> toJson() => {
        "geocoded_waypoints":
            List<dynamic>.from(geocodedWaypoints.map((x) => x.toJson())),
        "routes": List<dynamic>.from(routes.map((x) => x.toJson())),
        "status": status,
      };
}
